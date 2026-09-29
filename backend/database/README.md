# Database Schema

The project uses PostgreSQL hosted on Neon.

## Tables

### documents

Stores information about each uploaded PDF document.

Fields:
- `id` - Primary key
- `document_name` - Name of the PDF document
- `document_type` - Type/category of document
- `file_path` - Location of the source file
- `upload_date` - Date and time the document was added
- `page_count` - Number of pages in the PDF
- `processing_status` - Current processing status

### records

Stores extracted fields and values from processed documents.

Fields:
- `id` - Primary key
- `document_id` - Foreign key referencing `documents.id`
- `record_type` - Type/category of extracted record
- `field_name` - Name of the extracted field
- `field_value` - Extracted value
- `page_number` - Page where the value was found

Relationship:

`records.document_id -> documents.id`

Deleting a document also deletes its related records.

### analysis_results

Stores analysis or decision-support results associated with a document.

Fields:
- `id` - Primary key
- `document_id` - Foreign key referencing `documents.id`
- `analysis_type` - Type of analysis performed
- `result` - Analysis result
- `created_at` - Date and time the result was created

Relationship:

`analysis_results.document_id -> documents.id`

Deleting a document also deletes its related analysis results.

## Database Integration

Python connects to the Neon PostgreSQL database using SQLAlchemy and Psycopg.

Database credentials are stored securely using environment variables or Colab Secrets and must not be committed to GitHub.
