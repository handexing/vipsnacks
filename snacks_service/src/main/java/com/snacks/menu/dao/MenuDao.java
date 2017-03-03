package com.snacks.menu.dao;

import com.snacks.menu.entity.Menu;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MenuDao extends JpaRepository<Menu, Long> {

	@Query(value = "select me from Menu me,RoleMenu rm where rm.roleId=:roleId AND rm.menuId = me.id AND me.pid!=0")
	List<Menu> findMenuByRoleId(@Param("roleId") Long roleId);
	
	@Query(value = "select me from Menu me,RoleMenu rm where rm.roleId=:roleId AND rm.menuId = me.id AND me.pid=0")
	List<Menu> findParentMenuByRoleId(@Param("roleId") Long roleId);

}
