package com.spring.example.services;

import com.spring.example.models.Product;
import com.spring.example.models.Supplier;
import com.spring.example.repositories.ProductRepository;
import com.spring.example.repositories.SupplierRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Service;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.time.LocalDateTime;

import static com.spring.example.config.Constants.IN_STOCK;

@Service
public class NewDataLoader {

    private static final Logger logger = LoggerFactory.getLogger(NewDataLoader.class);
    @Value("${new.supplier.data.path}")
    private Resource supplierDataPath;
    @Value("${new.product.data.path}")
    private Resource productDataPath;
    @Value("${update.product.data.path}")
    private Resource productQuantityPath;
    private final SupplierRepository supplierRepository;
    private final ProductRepository productRepository;

    @Autowired
    public NewDataLoader(SupplierRepository supplierRepository, ProductRepository productRepository) {
        this.supplierRepository = supplierRepository;
        this.productRepository = productRepository;
    }

    private boolean isValidFile(Resource filePath) {
        if (filePath == null) {
            logger.error("Filepath not provided");
            return false;
        }
        if (!filePath.exists()) {
            logger.error("File not found at path {}", filePath);
            return false;
        }
        if (!filePath.isReadable()) {
            logger.error("Unable to access file at path {}", filePath);
            return false;
        }

        return true;
    }

    public void loadSupplierData() {
        if (!isValidFile(supplierDataPath)) {
            return;
        }
        try (BufferedReader supplierReader = new BufferedReader(new InputStreamReader(supplierDataPath.getInputStream()))) {
            String line;
            int supplierIndex = 0;
            while ((line = supplierReader.readLine()) != null) {
                supplierIndex++;
                try {
                    String[] entry = line.split(",");
                    if (entry.length > 3) {
                        throw new IllegalArgumentException("More than 3 fields provided in supplier file at line: " + supplierIndex);
                    }
                    if (supplierRepository.findByName(entry[0].trim()).isPresent()) {
                        throw new IllegalArgumentException("Supplier is already in database: " + entry[0]);
                    }
                    Supplier newSupplier = new Supplier();
                    newSupplier.setName(entry[0].trim());
                    newSupplier.setEmail(entry[1].trim());
                    newSupplier.setPhone(entry[2].trim());
                    newSupplier.setCreatedDate(LocalDateTime.now());
                    supplierRepository.save(newSupplier);
                    logger.info("New supplier has been added: {}", newSupplier.getName());
                } catch (IllegalArgumentException e) {
                    logger.error(e.getMessage());
                } catch (Exception e) {
                    logger.error("Error processing supplier file at line: {} - {}", supplierIndex, line, e);
                }
            }

        } catch (IOException e) {
            logger.error("Error reading the supplier data file", e);
        } catch (Exception e) {
            logger.error("Error processing supplier data file", e);
        }
    }

    public void loadProductData() {
        if (!isValidFile(productDataPath)) {
            return;
        }
        try (BufferedReader productReader = new BufferedReader(new InputStreamReader(productDataPath.getInputStream()))) {
            String line;
            int productIndex = 0;
            while ((line = productReader.readLine()) != null) {
                productIndex++;
                try {
                    String[] entry = line.split(",");
                    if (entry.length > 4) {
                        throw new IllegalArgumentException("More than 4 fields provided in product file at line: " + productIndex);
                    }
                    if (productRepository.findByName(entry[0].trim()).isPresent()) {
                        throw new IllegalArgumentException("Product is already in database: " + entry[0]);
                    }

                    Supplier productSupplier = supplierRepository.findByName(entry[3].trim())
                            .orElseThrow(() -> new IllegalArgumentException("Supplier is not in database: " + entry[3]));

                    Product newProduct = new Product();
                    newProduct.setName(entry[0].trim());
                    newProduct.setDescription(entry[1].trim());
                    newProduct.setQuantity(Integer.valueOf(entry[2]));
                    newProduct.setStatus(IN_STOCK);
                    newProduct.setSupplier(productSupplier);
                    newProduct.setCreatedDate(LocalDateTime.now());
                    newProduct.setLastUpdatedDate(LocalDateTime.now());

                    productRepository.save(newProduct);
                    logger.info("New product has been added: {}", newProduct.getName());
                } catch (IllegalArgumentException e) {
                    logger.error(e.getMessage());
                } catch (Exception e) {
                    logger.error("Error processing line at index: {} - {}", productIndex, line, e);
                }
            }

        } catch (IOException e) {
            logger.error("Error reading the product data file", e);
        } catch (Exception e) {
            logger.error("Error", e);
        }
    }

    public void updateProductQuantity() {
        if (!isValidFile(productQuantityPath)) {
            return;
        }
        try (InputStream inputStream = productQuantityPath.getInputStream()) {

            // Load and parse the XML file
            DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
            DocumentBuilder builder = factory.newDocumentBuilder();
            Document document = builder.parse(inputStream);

            // Normalize the XML structure
            document.getDocumentElement().normalize();

            // Get root element <products>
            String rootElement = document.getDocumentElement().getNodeName();

            // Get elements by tag name
            NodeList productNodeList = document.getElementsByTagName("product");

            // Iterate through nodes <product>
            for (int i = 0; i < productNodeList.getLength(); i++) {
                Element element = (Element) productNodeList.item(i);
                String name = element.getElementsByTagName("name").item(0).getTextContent();
                int quantity = Integer.parseInt(element.getElementsByTagName("quantity").item(0).getTextContent());
                Product product = productRepository.findByName(name)
                        .orElseThrow(() -> new IllegalArgumentException("Product " + name + " is not found in database"));

                product.setQuantity(quantity);
                product.setLastUpdatedDate(LocalDateTime.now());
                productRepository.save(product);
                logger.info("Product {} has been updated in database", name);
            }
        } catch (IllegalArgumentException e) {
            logger.error(e.getMessage());
        } catch (Exception e) {
            logger.error("Error processing quantity update XML file at {}", productQuantityPath);
        }

    }
}

