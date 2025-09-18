CREATE TABLE categories(
    category_id INT IDENTITY(1,1) PRIMARY KEY,
    category_name VARCHAR(100) NOT NULL UNIQUE,
    description NVARCHAR(MAX),
    created_date DATE DEFAULT CAST(GETDATE() AS DATE)
);
CREATE TABLE authors(
    author_id INT IDENTITY(1,1) PRIMARY KEY,
    author_name VARCHAR(255) NOT NULL,
    birth_year INT,
    nationality VARCHAR(100),
    biography NVARCHAR(MAX),
    CONSTRAINT chk_birth_year CHECK (birth_year BETWEEN 1000 AND YEAR(GETDATE()))
);
CREATE TABLE members(
    member_id INT IDENTITY(1,1) PRIMARY KEY,
    member_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE,
    phone_number VARCHAR(15),
    address NVARCHAR(255),
    membership_date DATE DEFAULT CAST(GETDATE() AS DATE),
    membership_type VARCHAR(20) 
        CHECK (membership_type IN ('Student','Faculty','General')) 
        DEFAULT 'General',
    status VARCHAR(20) 
        CHECK (status IN ('Active','Suspended','Expired')) 
        DEFAULT 'Active'
);
CREATE TABLE books (
    book_id INT IDENTITY(1,1) PRIMARY KEY,
    title VARCHAR(500) NOT NULL,
    author_id INT,
    category_id INT,
    isbn VARCHAR(20) UNIQUE,
    publication_year INT,
    publisher VARCHAR(255),
    pages INT,
    copies_available INT DEFAULT 1,
    total_copies INT DEFAULT 1,
    shelf_location VARCHAR(50),

    FOREIGN KEY (author_id) REFERENCES authors(author_id) ON DELETE SET NULL,
    FOREIGN KEY (category_id) REFERENCES categories(category_id) ON DELETE SET NULL
);
CREATE TABLE borrowings (
    borrowing_id INT IDENTITY(1,1) PRIMARY KEY,
    member_id INT NOT NULL,
    book_id INT NOT NULL,
    borrow_date DATE DEFAULT CAST(GETDATE() AS DATE),
    due_date DATE NOT NULL,
    return_date DATE NULL,
    fine_amount DECIMAL(10,2) DEFAULT 0.00,
    status VARCHAR(20) 
        CHECK (status IN ('Borrowed', 'Returned', 'Overdue', 'Lost')) 
        DEFAULT 'Borrowed',

    FOREIGN KEY (member_id) REFERENCES members(member_id) ON DELETE CASCADE,
    FOREIGN KEY (book_id) REFERENCES books(book_id) ON DELETE CASCADE
);
CREATE TABLE staff (
    staff_id INT IDENTITY(1,1) PRIMARY KEY,
    staff_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE,
    phone_number VARCHAR(15),
    position VARCHAR(50) 
        CHECK (position IN ('Librarian', 'Assistant', 'Manager')) 
        DEFAULT 'Assistant',
    hire_date DATE DEFAULT CAST(GETDATE() AS DATE),
    salary DECIMAL(10,2)
);
