package com.example.demo.model;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

@Entity
@Table(name="trx_details", uniqueConstraints = @UniqueConstraint(columnNames = {"trx_header_id","medicines_id","code"}))
public class Detail extends BaseEntity{

	private 
	
}
