package com.example.oci_microservice.repository;

import com.example.oci_microservice.model.Student;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface StudentRepository extends JpaRepository<Student, Long> {
    Optional<Student> findByMatricula(String matricula); // Buscar por matrícula
}
