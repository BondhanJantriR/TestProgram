--CREATE EXTENSION IF NOT exist "uuid-ossp";

DROP TABLE medicines 

CREATE TABLE medicines(
	id serial PRIMARY KEY,
	code TEXT NOT NULL,
	"name" TEXT NOT NULL,
	price NUMERIC NOT NULL,
	created_at timestamp NOT NULL DEFAULT now(),
	created_by TEXT NOT NULL DEFAULT 'admin' ::TEXT,
	updated_at timestamp NOT NULL DEFAULT now(),
	updated_by TEXT NOT NULL DEFAULT 'admin' ::TEXT,
	"version" NUMERIC NOT NULL,
	CONSTRAINT bk_obat UNIQUE(code, name)
);

CREATE TABLE trx_headers(
	id serial PRIMARY KEY,
	trx_code TEXT NOT NULL,
	total_price NUMERIC NOT NULL,
	created_at timestamp NOT NULL DEFAULT now(),
	created_by TEXT NOT NULL DEFAULT 'admin' ::TEXT,
	updated_at timestamp NOT NULL DEFAULT now(),
	updated_by TEXT NOT NULL DEFAULT 'admin' ::TEXT,
	"version" NUMERIC NOT NULL,
	CONSTRAINT bk_headers UNIQUE (trx_code)
);

DROP TABLE trx_details 

CREATE TABLE trx_details(
	id serial PRIMARY key,
	trx_header_id INTEGER NOT NULL,
	medicines_id INTEGER NOT NULL,
	code TEXT NOT NULL,
	total_items NUMERIC NOT NULL,
	created_at timestamp NOT NULL DEFAULT now(),
	created_by TEXT NOT NULL DEFAULT 'admin' ::TEXT,
	updated_at timestamp NOT NULL DEFAULT now(),
	updated_by text NOT NULL DEFAULT 'admin' ::TEXT,
	"version" NUMERIC NOT NULL,
	CONSTRAINT bk_details unique(trx_header_id,medicines_id,code),
	CONSTRAINT fk_trx_headers FOREIGN KEY (trx_header_id) REFERENCES trx_headers (id),
	CONSTRAINT fk_medicines FOREIGN KEY (medicines_id) REFERENCES medicines(id)
);