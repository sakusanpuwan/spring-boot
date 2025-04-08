package com.in28minutes.springboot.learn_jpa_and_hibernate.service;

import com.in28minutes.springboot.learn_jpa_and_hibernate.model.Movie;
import jakarta.persistence.criteria.Predicate;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.util.StringUtils;

import java.util.ArrayList;
import java.util.List;

// An interface defined by Spring Data JPA
// Encapsulates the logic for creating individual filter criteria
// Filters are dynamically combined to build queries
// Acts as a factory/utility class
public class MovieSpecification {

    // --- Static methods for each filter criterion ---

    /*
        Root<Movie> root - root entity of query = Movie / alias (m) in Movies m. Used to access fields like "name", "releaseDate", etc.
        CriteriaQuery<?> query - query object e.g. a SELECT query
        CriteriaBuilder criteriaBuilder - factory object used to construct query
                Predicates - represents conditions .equals(), .like(), greatThanOrEqualTo(), etc.
                Expressions - Represents values within query root.get("name)
     */


    public static Specification<Movie> hasKeyword(String keyword) {
        return (root, query, criteriaBuilder) -> {
            if (!StringUtils.hasText(keyword)) { // Check if keyword is null or empty
                return criteriaBuilder.conjunction(); // Always true predicate (no filtering)
            }
            // Case-insensitive LIKE search on the movie name
            return criteriaBuilder.like(criteriaBuilder.lower(root.get("name")), "%" + keyword.toLowerCase() + "%");
        };
    }

    public static Specification<Movie> releasedInYear(Integer year) {
        return (root, query, criteriaBuilder) -> {
            if (year == null) {
                return criteriaBuilder.conjunction(); // No filtering if year is null
            }
            // Use YEAR function (database specific translation handled by Hibernate)
            return criteriaBuilder.equal(criteriaBuilder.function("TO_CHAR", String.class, root.get("releaseDate"), criteriaBuilder.literal("YYYY")), year.toString());
        };
    }

    public static Specification<Movie> hasBoxOfficeGreaterThanOrEqual(Long min) {
        return (root, query, criteriaBuilder) -> {
            if (min == null) {
                return criteriaBuilder.conjunction();
            }
            // Join with BoxOffice entity and filter on worldwideBoxOffice
            // Assumes Movie has a 'boxOffice' field mapped to BoxOffice entity
            return criteriaBuilder.greaterThanOrEqualTo(root.get("boxOffice").get("worldwideBoxOffice"), min);
        };
    }

    public static Specification<Movie> hasBoxOfficeLessThanOrEqual(Long max) {
        return (root, query, criteriaBuilder) -> {
            if (max == null) {
                return criteriaBuilder.conjunction();
            }
            return criteriaBuilder.lessThanOrEqualTo(root.get("boxOffice").get("worldwideBoxOffice"), max);
        };
    }

    public static Specification<Movie> hasBoxOfficeBetween(Long min, Long max) {
        return (root, query, criteriaBuilder) -> {
            List<Predicate> predicates = new ArrayList<>();
            if (min != null) {
                predicates.add(criteriaBuilder.greaterThanOrEqualTo(root.get("boxOffice").get("worldwideBoxOffice"), min));
            }
            if (max != null) {
                predicates.add(criteriaBuilder.lessThanOrEqualTo(root.get("boxOffice").get("worldwideBoxOffice"), max));
            }
            if (predicates.isEmpty()) {
                return criteriaBuilder.conjunction(); // No range specified
            }
            // Combine min and max predicates with AND
            return criteriaBuilder.and(predicates.toArray(new Predicate[0]));
        };
    }

    public static Specification<Movie> belongsToPhase(Long phaseId) {
        return (root, query, criteriaBuilder) -> {
            if (phaseId == null) {
                return criteriaBuilder.conjunction();
            }
            // Assumes Movie has a 'phase' field mapped to Phase entity
            // Filter by the ID of the related Phase entity
            return criteriaBuilder.equal(root.get("phase").get("id"), phaseId);
        };
    }

}