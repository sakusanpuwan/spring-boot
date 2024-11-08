package com.in28minutes.springboot.learn_jpa_and_hibernate.course.jdbc;

import com.in28minutes.springboot.learn_jpa_and_hibernate.course.Course;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class CourseJdbcRepository {
    @Autowired
    private JdbcTemplate springJdbcTemplate;

    private static String INSERT_QUERY =
            """
                insert into course (id, name, author)
                values(1, 'Learn Spring', 'in28minutes');  
            """;

    private static String INSERT_QUERY_WITH_PARAM =
            """
                insert into course (id, name, author)
                values(?, ?, ?);  
            """;

    private static String SELECT_QUERY =
            """
                select * from course
                where id = ?        
            """;

    public void insert() {
        springJdbcTemplate.update(INSERT_QUERY);
    }

    public void insertWithParam(Course course) {
        springJdbcTemplate.update(INSERT_QUERY_WITH_PARAM,
                course.getId(), course.getName(), course.getAuthor());
    }

    public Course findById(long id) {
        return springJdbcTemplate.queryForObject(SELECT_QUERY,new BeanPropertyRowMapper<>(Course.class),id);
    }
}
