package com.snacks.admin.entity;

import com.snacks.menu.entity.Role;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "ADMIN")
public class Admin {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "ID")
	private Long id;
	@Column(name = "NAME")
	private String name;
	@Column(name = "NICK")
	private String nick;
	@Column(name = "PSW")
	private String psw;
	@OneToOne(cascade = CascadeType.MERGE, fetch = FetchType.EAGER, optional = true)
	@JoinColumn(name = "ROLE_ID")
	private Role role;

	public Long getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getNick() {
		return nick;
	}
	
	public String getPsw() {
		return psw;
	}
	
	public Role getRole() {
		return role;
	}
	
	public void setId(Long id) {
		this.id = id;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public void setNick(String nick) {
		this.nick = nick;
	}
	
	public void setPsw(String psw) {
		this.psw = psw;
	}

	public void setRole(Role role) {
		this.role = role;
	}

	
}
