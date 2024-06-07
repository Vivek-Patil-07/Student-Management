package com.student.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.student.model.Student_Crud;


public interface Repo extends JpaRepository<Student_Crud, Integer> {

	 Student_Crud findByEmail(String email);
}
