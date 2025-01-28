package com.spring.example;

import ch.qos.logback.classic.Logger;
import ch.qos.logback.classic.spi.ILoggingEvent;
import ch.qos.logback.core.read.ListAppender;
import com.spring.example.models.Product;
import com.spring.example.models.Supplier;
import com.spring.example.repositories.ProductRepository;
import com.spring.example.repositories.SupplierRepository;
import com.spring.example.services.NewDataLoader;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;

import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.mockito.Mockito.*;

import org.mockito.Mockito;
import org.mockito.junit.jupiter.MockitoExtension;
import org.slf4j.LoggerFactory;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.core.io.Resource;
import org.springframework.test.util.ReflectionTestUtils;
import uk.org.lidalia.slf4jtest.TestLogger;
import uk.org.lidalia.slf4jtest.TestLoggerFactory;

import java.io.IOException;
import java.util.Optional;

@ExtendWith(MockitoExtension.class)
class DataLoaderTest {

	@Mock
    private SupplierRepository supplierRepository;

    @Mock
    private ProductRepository productRepository;

    @InjectMocks
    private NewDataLoader newDataLoader;

    private final TestLogger testLogger = TestLoggerFactory.getTestLogger(NewDataLoader.class);

    ListAppender<ILoggingEvent> appender;

    @BeforeEach
    public void setup(){
        // Set up a ListAppender to capture logs
        appender = new ListAppender<>();
        appender.start();

        // Get the logger for your class
        Logger logger = (Logger) LoggerFactory.getLogger(NewDataLoader.class);
        logger.addAppender(appender);
    }

    @Test
    void loadSupplierData_Success() {
        String supplierData = """
                Supplier1,supplier1@example.com,1234567890
                Supplier2,supplier2@example.com,9876543210
                """;
        Resource mockResource = new ByteArrayResource(supplierData.getBytes());

        ReflectionTestUtils.setField(newDataLoader, "supplierDataPath", mockResource);

        when(supplierRepository.findByName(anyString())).thenReturn(Optional.empty());

        newDataLoader.loadSupplierData();

        verify(supplierRepository, times(2)).save(any(Supplier.class));

        assertTrue(
                appender.list.stream()
                        .anyMatch(event -> event.getFormattedMessage().contains("New supplier has been added: Supplier1")),
                "Expected log message was not found."
        );
    }

    @Test
    void loadSupplierData_LogsError_WhenMoreThan3Fields() {
        String supplierData = """
                Supplier1,supplier1@example.com,1234567890,"ILLEGAL"
                """;
        Resource mockResource = new ByteArrayResource(supplierData.getBytes());

        ReflectionTestUtils.setField(newDataLoader, "supplierDataPath", mockResource);

        newDataLoader.loadSupplierData();

        assertTrue(
                appender.list.stream()
                        .anyMatch(event -> event.getFormattedMessage().contains("More than 3 fields provided in supplier file at line: 1")),
                "Expected log message was not found."
        );
    }

    @Test
    void loadSupplierData_LogsErrorWithLineNumber_WhenMoreThan3Fields() {
        String supplierData = """
                Supplier1,supplier1@example.com,1234567891"
                Supplier2,supplier2@example.com,1234567892"
                Supplier3,supplier3@example.com,1234567893"
                Supplier4,supplier4@example.com,1234567894","ILLEGAL"
                """;
        Resource mockResource = new ByteArrayResource(supplierData.getBytes());

        ReflectionTestUtils.setField(newDataLoader, "supplierDataPath", mockResource);

        when(supplierRepository.findByName(anyString())).thenReturn(Optional.empty());

        newDataLoader.loadSupplierData();

        assertTrue(
                appender.list.stream()
                        .anyMatch(event -> event.getFormattedMessage().contains("More than 3 fields provided in supplier file at line: 4"))
        );

        assertTrue(
                appender.list.stream()
                        .anyMatch(event -> event.getFormattedMessage().contains("New supplier has been added: Supplier3"))
        );
    }

    @Test
    void loadSupplierData_LogsError_WhenNewSupplierAlreadyExists() {
        String supplierData = """
                Supplier1,supplier1@example.com,1234567891"
                """;

        Optional<Supplier> mockSupplier = Optional.of(new Supplier());

        Resource mockResource = new ByteArrayResource(supplierData.getBytes());

        ReflectionTestUtils.setField(newDataLoader, "supplierDataPath", mockResource);

        when(supplierRepository.findByName(anyString())).thenReturn(mockSupplier);

        newDataLoader.loadSupplierData();

        assertTrue(
                appender.list.stream()
                        .anyMatch(event -> event.getFormattedMessage().contains("Supplier is already in database: Supplier1"))
        );

    }

    @Test
    void loadSupplierData_LogsError_WhenIOExceptionThrown() throws IOException {

        Resource mockResource = Mockito.mock(Resource.class);

        when(mockResource.exists()).thenReturn(true);
        when(mockResource.isReadable()).thenReturn(true);

        ReflectionTestUtils.setField(newDataLoader, "supplierDataPath", mockResource);

        when(mockResource.getInputStream()).thenThrow(IOException.class);

        newDataLoader.loadSupplierData();

        assertTrue(
                appender.list.stream()
                        .anyMatch(event -> event.getFormattedMessage().contains("Error reading the supplier data file")),
                "Expected log message was not found."
        );
    }

    @Test
    void loadSupplierData_LogsError_WhenInvalidFile_NotFound() {

        Resource mockResource = Mockito.mock(Resource.class);

        when(mockResource.exists()).thenReturn(false);

        ReflectionTestUtils.setField(newDataLoader, "supplierDataPath", mockResource);

        newDataLoader.loadSupplierData();

        assertTrue(
                appender.list.stream()
                        .anyMatch(event -> event.getFormattedMessage().contains("File not found at path")),
                "Expected log message was not found."
        );
    }

    @Test
    void loadSupplierData_LogsError_WhenInvalidFile_NotReadable() {

        Resource mockResource = Mockito.mock(Resource.class);

        when(mockResource.exists()).thenReturn(true);
        when(mockResource.isReadable()).thenReturn(false);

        ReflectionTestUtils.setField(newDataLoader, "supplierDataPath", mockResource);

        newDataLoader.loadSupplierData();

        assertTrue(
                appender.list.stream()
                        .anyMatch(event -> event.getFormattedMessage().contains("Unable to access file at path")),
                "Expected log message was not found."
        );
    }

    @Test
    void loadSupplierData_LogsError_WhenInvalidFile_NullPath() {

        Resource mockResource = null;

        ReflectionTestUtils.setField(newDataLoader, "supplierDataPath", mockResource);

        newDataLoader.loadSupplierData();

        assertTrue(
                appender.list.stream()
                        .anyMatch(event -> event.getFormattedMessage().contains("Filepath not provided")),
                "Expected log message was not found."
        );
    }

    @Test
    void updateProductQuantity_Success() {
        String mockXml = """
                        <?xml version="1.0" encoding="UTF-8"?>
                        <products>
                            <product>
                                <name>Widget A</name>
                                <quantity>50</quantity>
                            </product>
                            <product>
                                <name>Widget B</name>
                                <quantity>20</quantity>
                            </product>
                        </products>
                        """;

        Optional<Product> mockProduct= Optional.of(new Product());

        Resource mockResource = new ByteArrayResource(mockXml.getBytes());

        ReflectionTestUtils.setField(newDataLoader, "productQuantityPath", mockResource);

        when(productRepository.findByName(anyString())).thenReturn(mockProduct);

        newDataLoader.updateProductQuantity();

        verify(productRepository, times(2)).save(any(Product.class));

        assertTrue(
                appender.list.stream()
                        .anyMatch(event -> event.getFormattedMessage().contains("Product Widget A has been updated in database")),
                "Expected log message was not found."
        );
    }

    @Test
    void updateProductQuantity_LogsError_WhenProductIsNotFoundInDatabase() {
        String mockXml = """
                        <?xml version="1.0" encoding="UTF-8"?>
                        <products>
                            <product>
                                <name>Widget A</name>
                                <quantity>50</quantity>
                            </product>
                        </products>
                        """;

        Optional<Product> mockProduct= Optional.empty();

        Resource mockResource = new ByteArrayResource(mockXml.getBytes());

        ReflectionTestUtils.setField(newDataLoader, "productQuantityPath", mockResource);

        when(productRepository.findByName(anyString())).thenReturn(mockProduct);

        newDataLoader.updateProductQuantity();

        assertTrue(
                appender.list.stream()
                        .anyMatch(event -> event.getFormattedMessage().contains("Product Widget A is not found in database")),
                "Expected log message was not found."
        );
    }

}
