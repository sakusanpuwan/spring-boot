# Project Brief: Movie Data Management API

This project will be a Spring Boot REST API that integrates all the database tables into a structured system. The API will allow CRUD operations, complex queries, and data processing using Spring ORM, SQL, repositories, entity relationships, eager/lazy fetching, and data aggregation.

## 1. Entity Relationship Breakdown

The system consists of five main entities:

-   **Movies**
-   **Box Office**
-   **Characters**
-   **Phases**
-   **Public Response**

Each entity has relationships that help in fetching associated data effectively.

### Entity Relationships

**Movies Table**

-   One-to-Many with Characters (A movie can have multiple characters)
-   One-to-Many with Public Response (A movie has multiple public responses)
-   Many-to-One with Phases (Each movie belongs to one phase)
-   One-to-One with Box Office (Each movie has one box office record)

**Box Office Table**

-   One-to-One with Movies (Each movie has a single box office record)
-   Many-to-One with Phases (Each box office record is linked to a phase)

**Characters Table**

-   Many-to-One with Movies (A character belongs to a single movie)
-   Many-to-Many with Actors (An actor can play multiple characters in multiple movies)

**Phases Table**

-   One-to-Many with Movies (Each phase contains multiple movies)
-   One-to-Many with Box Office (Each phase contains multiple box office records)

**Public Response Table**

-   Many-to-One with Movies (Each public response is linked to a movie)

## 2. API Endpoints & Functionalities

This API will provide endpoints for CRUD operations, complex queries, and analytics.

### Movies API

| Method | Endpoint                  | Description                                  |
| :----- | :------------------------ | :------------------------------------------- |
| GET    | /api/movies               | Get all movies                               |
| GET    | /api/movies/{id}          | Get a specific movie by ID                   |
| POST   | /api/movies               | Create a new movie                           |
| PUT    | /api/movies/{id}          | Update movie details                         |
| DELETE | /api/movies/{id}          | Delete a movie                               |
| GET    | /api/movies/{id}/characters | Get all characters for a movie               |
| GET    | /api/movies/{id}/box-office | Get box office details of a movie            |
| GET    | /api/movies/by-phase/{phaseId} | Get all movies in a specific phase |

### Box Office API

| Method | Endpoint                          | Description                                  |
| :----- | :-------------------------------- | :------------------------------------------- |
| GET    | /api/box-office                   | Get all box office records                   |
| GET    | /api/box-office/{movieId}         | Get box office details for a specific movie |
| GET    | /api/box-office/highest-grossing | Get the highest-grossing movies              |
| GET    | /api/box-office/by-phase/{phaseId} | Get box office stats for a phase             |

### Characters API

| Method | Endpoint                           | Description                                           |
| :----- | :--------------------------------- | :---------------------------------------------------- |
| GET    | /api/characters                    | Get all characters                                    |
| GET    | /api/characters/{id}               | Get a character by ID                                 |
| POST   | /api/characters                    | Add a new character                                   |
| GET    | /api/characters/by-movie/{movieId} | Get characters for a specific movie                   |
| GET    | /api/characters/by-actor/{actorName} | Get all characters played by a specific actor |

### Phases API

| Method | Endpoint                | Description                  |
| :----- | :---------------------- | :--------------------------- |
| GET    | /api/phases             | Get all phases               |
| GET    | /api/phases/{id}        | Get a phase by ID            |
| POST   | /api/phases             | Create a new phase           |
| GET    | /api/phases/{id}/movies | Get all movies in a phase |

### Public Response API

| Method | Endpoint                            | Description                                     |
| :----- | :---------------------------------- | :---------------------------------------------- |
| GET    | /api/public-response                | Get all public responses                        |
| GET    | /api/public-response/{movieId}      | Get public response for a specific movie        |
| GET    | /api/public-response/top-rated | Get movies with the highest public ratings |

## 3. Integration & Implementation Plan

To ensure the API is well-structured, we will follow Spring Boot best practices:

1.  **Define Entity Classes**
    -   Use `@Entity` and `@Table` annotations.
    -   Establish relationships using `@OneToMany`, `@ManyToOne`, and `@ManyToMany`.
    -   Use foreign key mappings instead of raw IDs.
2.  **Implement Repositories**
    -   Extend `JpaRepository` for basic CRUD.
    -   Use custom query methods for advanced data retrieval.
3.  **Create Service Layer**
    -   Business logic such as calculating revenue percentages or aggregating ratings will be handled here.
4.  **Implement REST Controllers**
    -   Use `@RestController` to define API endpoints.
    -   Use `@RequestMapping`, `@GetMapping`, `@PostMapping`, etc.
5.  **Data Fetching Strategies**
    -   Lazy Loading for related entities like Characters and Public Responses.
    -   Eager Loading for frequently used relationships like Box Office details.
6.  **Query Optimization**
    -   Use JPQL and Native SQL for fetching complex data.
    -   Implement Pagination and Sorting for large datasets.
7.  **Exception Handling**
    -   Implement `@ControllerAdvice` for global exception handling.
    -   Return custom error messages for missing records.
8.  **Testing & Validation**
    -   Use JUnit and Mockito for unit testing.
    -   Implement Spring Boot Validation to ensure data integrity.
