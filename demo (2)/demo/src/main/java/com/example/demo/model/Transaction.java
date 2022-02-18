package com.example.demo.model;

import java.math.BigDecimal;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Entity
@Table(name="trx_headers", uniqueConstraints = @UniqueConstraint(columnNames = "code"))
public class Transaction extends BaseEntity{
	

	private String trxCode;
	
	private BigDecimal totalPrice;
	
	private List<>
}
