## JDBC (Java Database Connectivity)
is a standard Java API for connecting Java applications to relational databases (like MySQL, PostgreSQL, Oracle, etc.). It provides a set of classes and interfaces to perform CRUD (Create, Read, Update, Delete) operations on databases.  

JDBC allows you to execute SQL queries directly from your Java code using a DriverManager and Connection objects. With JDBC, you manually manage SQL queries, connections, result sets, and exception handling.

**Issues**:
- Lot of boilerplate code required to handle connections, statements
- Need to manage transactions manually
- Must handle exceptions like SQLException

## Spring JDBC
is a module in the Spring Framework that simplifies JDBC usage by reducing boilerplate code. It abstracts the repetitive tasks involved with JDBC (like opening/closing connections, exception handling, etc.) while still allowing you to work with raw SQL queries.  

It automatically manages resource allocation (connection, statement, and result set), and error handling, and makes it easier to map database rows to Java objects.

## JPA (Java Persistence API)
is a Java specification for managing relational data using Object-Relational Mapping (ORM). It allows you to map Java objects (entities) to database tables, and query the database using object-oriented paradigms instead of raw SQL.
JPA is not a framework itself; rather, it defines a set of rules for ORM. Hibernate is one of the most popular implementations of JPA.

## Spring Data JPA 
is a part of the Spring Data family that provides an easy way to work with the **Java Persistence API (JPA)** and relational databases. It is a high-level framework built on top of **JPA** and **Hibernate** that simplifies database interactions in Spring applications by handling common data access tasks and providing built-in CRUD operations.

### Key Features of Spring Data JPA
- **Simplified Data Access Layer**: Allows for easy creation of repository interfaces, removing the need for writing boilerplate code for data access.
- **Automatic Query Generation**: Automatically generates queries based on method names, making it easy to perform standard database operations without needing to write explicit queries.
- **Integration with JPA**: Uses JPA annotations and configuration, making it compatible with JPA providers like Hibernate.
- **Support for Custom Queries**: Allows for writing custom JPQL, native SQL, and named queries when specific requirements go beyond standard CRUD operations.

## Hibernate
is an ORM framework that provides an implementation of the JPA specification. Offers additional features beyond JPA specification such as better caching, custom types and batch processing.
## h2
```xml
// pom.xml

<dependencies>
    <dependency>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-starter-data-jdbc</artifactId>
    </dependency>
    <dependency>
        <groupId>org.springframework.boot</groupId>
        <artifactId>spring-boot-starter-data-jpa</artifactId>
    </dependency>
    <dependency>
        <groupId>com.h2database</groupId>
        <artifactId>h2</artifactId>
        <scope>runtime</scope>
    </dependency>
</dependencies>

```
Run SpringBootApplication and identify h2 console url
```text
// Console
HikariPool-1 - Starting...
HikariPool-1 - Added connection conn0: url=jdbc:h2:mem:testdb user=SA
HikariPool-1 - Start completed.
H2 console available at '/h2-console'. Database available at 'jdbc:h2:mem:testdb'
```

```properties
// application.properties
spring.application.name=learn-jpa-and-hibernate
spring.h2.console.enabled=true
spring.datasource.url=jdbc:h2:mem:testdb
```

In browser, login and view h2 console via `http://localhost:8080/h2-console`  

`JDBC URL` = `jdbc:h2:mem:testdb`

To create a SQL database
```roomsql
// resources/schema.sql
create table course
(
    id bigint not null,
    name varchar(255) not null,
    author varchar(255) not null,
    primary key (id)
);
```

