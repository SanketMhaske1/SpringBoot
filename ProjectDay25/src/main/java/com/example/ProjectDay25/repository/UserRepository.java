package com.example.ProjectDay25.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.example.ProjectDay25.model.User;


@Repository
public interface UserRepository extends JpaRepository<User,String> {
	@Query("select u from User u where u.username=:uname and u.userpassword =:pass")
	public User getUser(@Param("uname") String uname, @Param("pass") String pass);


}


