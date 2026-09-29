CREATE TABLE documents (
    id SERIAL PRIMARY KEY,
    document_name VARCHAR(255) NOT NULL,
    document_type VARCHAR(100),
    file_path TEXT,
    upload_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    page_count INTEGER,
    processing_status VARCHAR(50)
);

CREATE TABLE records (
    id SERIAL PRIMARY KEY,
    document_id INTEGER NOT NULL,
    record_type VARCHAR(100),
    field_name VARCHAR(150) NOT NULL,
    field_value TEXT,
    page_number INTEGER,
    FOREIGN KEY (document_id) REFERENCES documents(id) ON DELETE CASCADE
);
