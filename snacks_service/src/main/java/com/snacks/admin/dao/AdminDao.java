package com.snacks.admin.dao;

import com.snacks.admin.entity.Admin;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AdminDao extends JpaRepository<Admin, Long> {

	public Admin findByNameAndPsw(String name,String psw);
}
