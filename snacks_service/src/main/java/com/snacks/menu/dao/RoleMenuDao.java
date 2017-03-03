package com.snacks.menu.dao;

import com.snacks.menu.entity.RoleMenu;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RoleMenuDao extends JpaRepository<RoleMenu, Long> {

}
