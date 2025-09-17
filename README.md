# 📚 Library Management System - SQL Project

![SQL](https://img.shields.io/badge/SQL-Database-blue)
![MySQL](https://img.shields.io/badge/MySQL-Compatible-orange)
![License](https://img.shields.io/badge/License-MIT-green)
![Status](https://img.shields.io/badge/Status-Complete-success)

A comprehensive **Library Management System** built with SQL, demonstrating database design, data relationships, and query optimization. This project showcases progression from basic to intermediate SQL concepts through real-world library operations.

## 🎯 Project Overview

This project simulates a complete digital library management system that handles:
- **Book Inventory Management** - Catalog with categories, authors, and availability tracking
- **Member Management** - Student, Faculty, and General membership with status tracking  
- **Borrowing System** - Complete transaction lifecycle with due dates and fine calculations
- **Staff Management** - Library personnel with roles and salary information
- **Analytics & Reporting** - Comprehensive insights into library operations

Perfect for **SQL learning**, **portfolio projects**, and demonstrating **database design skills** to potential employers.

## ✨ Features

### 🔧 **Technical Features**
- ✅ **Normalized Database Design** (3NF) with proper relationships
- ✅ **Foreign Key Constraints** with CASCADE operations
- ✅ **Data Validation** using CHECK constraints and ENUM types
- ✅ **Performance Optimization** with strategic indexing
- ✅ **Views & Procedures** for common operations
- ✅ **Comprehensive Sample Data** for immediate testing

### 📊 **Business Features**
- ✅ **Real-time Inventory Tracking** with availability management
- ✅ **Automated Fine Calculation** for overdue books
- ✅ **Member Classification** (Student/Faculty/General) with different privileges
- ✅ **Borrowing History** with complete transaction records
- ✅ **Popular Books Analytics** and trend analysis
- ✅ **Staff Workload Management** with role-based access

## 🗄️ Database Schema

### **Core Tables**
| Table | Records | Purpose |
|-------|---------|---------|
| `categories` | 10 | Book classification system |
| `authors` | 12 | Author information and biography |
| `members` | 12 | Library member management |
| `books` | 20 | Complete book catalog with inventory |
| `borrowings` | 22 | Transaction tracking system |
| `staff` | 6 | Library employee management |

### **Entity Relationship Diagram**
```
┌─────────────┐    ┌─────────────┐    ┌─────────────┐
│ categories  │    │   authors   │    │   members   │
│             │    │             │    │             │
├─────────────┤    ├─────────────┤    ├─────────────┤
│category_id🔑│    │author_id🔑  │    │member_id🔑  │
│category_name│    │author_name  │    │member_name  │
│description  │    │birth_year   │    │email        │
└──────┬──────┘    │nationality  │    │membership   │
       │           └──────┬──────┘    │_type        │
       │                  │           │status       │
       │                  │           └──────┬──────┘
       │                  │                  │
       │           ┌─────────────┐           │
       │           │    books    │           │
       │           │             │           │
       │           ├─────────────┤           │
       └───────────┤category_id🔗│           │
                   │book_id🔑    │           │
           ┌───────┤author_id🔗  │           │
           │       │title        │           │
           │       │isbn         │           │
           │       │copies_avail │           │
           │       └──────┬──────┘           │
           │              │                  │
           │              │                  │
    ┌─────────────┐       │       ┌─────────────┐
    │    staff    │       │       │ borrowings  │
    │             │       │       │             │
    ├─────────────┤       │       ├─────────────┤
    │staff_id🔑   │       └───────┤book_id🔗    │
    │staff_name   │               │member_id🔗──┘
    │position     │               │borrow_date  │
    │hire_date    │               │due_date     │
    │salary       │               │return_date  │
    └─────────────┘               │status       │
                                  │fine_amount  │
                                  └─────────────┘
```

## 🚀 Getting Started

### **Prerequisites**
- MySQL 5.7+ or MariaDB 10.3+
- MySQL Workbench (recommended) or any SQL client
- Basic understanding of SQL concepts

### **Installation**

1. **Clone the Repository**
   ```bash
   git clone https://github.com/yourusername/library-management-sql.git
   cd library-management-sql
   ```

2. **Set Up Database**
   ```sql
   -- Run in your MySQL client
   SOURCE library_management_system.sql
   ```

3. **Insert Sample Data**
   ```sql
   -- Populate tables with realistic data
   SOURCE library_insert_data.sql
   ```

4. **Verify Installation**
   ```sql
   -- Check if all tables are created and populated
   SHOW TABLES;
   SELECT COUNT(*) FROM books;
   SELECT COUNT(*) FROM members;
   ```

## 📋 Project Structure

```
library-management-sql/
├── 📄 README.md                          # Project documentation
├── 🗃️ library_management_system.sql      # Database schema and table creation
├── 📊 library_insert_data.sql            # Sample data insertion script
├── 📈 sample_queries.sql                 # Basic to intermediate query examples
├── 📑 library-system-guide.md            # Detailed project guide
├── 🖼️ database_diagram.png               # ER diagram visualization
└── 📁 documentation/
    ├── 📝 query_examples.md              # Comprehensive query documentation
    ├── 🎯 business_scenarios.md           # Use case scenarios
    └── 🔧 setup_guide.md                 # Detailed setup instructions
```

## 💻 Usage Examples

### **Basic Queries**

**List Available Books**
```sql
SELECT b.title, a.author_name, c.category_name, b.copies_available
FROM books b
JOIN authors a ON b.author_id = a.author_id
JOIN categories c ON b.category_id = c.category_id
WHERE b.copies_available > 0
ORDER BY b.title;
```

**Current Borrowings**
```sql
SELECT m.member_name, b.title, br.borrow_date, br.due_date,
       DATEDIFF(CURDATE(), br.due_date) as days_overdue
FROM borrowings br
JOIN members m ON br.member_id = m.member_id
JOIN books b ON br.book_id = b.book_id
WHERE br.status = 'Borrowed'
ORDER BY br.due_date;
```

### **Intermediate Analytics**

**Most Popular Books**
```sql
SELECT b.title, a.author_name, COUNT(br.borrowing_id) as times_borrowed,
       ROUND((COUNT(br.borrowing_id) / b.total_copies), 2) as popularity_ratio
FROM books b
JOIN authors a ON b.author_id = a.author_id
LEFT JOIN borrowings br ON b.book_id = br.book_id
GROUP BY b.book_id, b.title, a.author_name, b.total_copies
ORDER BY times_borrowed DESC;
```

**Member Borrowing Statistics**
```sql
SELECT m.member_name, m.membership_type,
       COUNT(br.borrowing_id) as total_borrowed,
       COUNT(CASE WHEN br.status = 'Returned' THEN 1 END) as returned,
       COUNT(CASE WHEN br.status = 'Overdue' THEN 1 END) as overdue,
       SUM(br.fine_amount) as total_fines
FROM members m
LEFT JOIN borrowings br ON m.member_id = br.member_id
WHERE m.status = 'Active'
GROUP BY m.member_id, m.member_name, m.membership_type
ORDER BY total_borrowed DESC;
```

## 📊 Sample Data

### **Comprehensive Test Dataset**
- **📚 20 Popular Books** - Harry Potter, The Shining, Foundation, Sapiens, etc.
- **✍️ 12 Famous Authors** - J.K. Rowling, Stephen King, Isaac Asimov, etc.
- **👥 12 Diverse Members** - Students, Faculty, General public
- **📋 22 Borrowing Records** - Active loans, returns, overdue items
- **👨‍💼 6 Staff Members** - Manager, Librarians, Assistants
- **🏷️ 10 Categories** - Fiction, Science, History, Technology, etc.

## 🎓 Learning Outcomes

By completing this project, you will demonstrate proficiency in:

### **SQL Fundamentals**
- ✅ Database design and normalization
- ✅ Table creation with constraints
- ✅ Foreign key relationships
- ✅ Data insertion and validation

### **Query Skills**
- ✅ Basic SELECT with WHERE, ORDER BY
- ✅ INNER and LEFT JOINs across multiple tables
- ✅ GROUP BY with aggregate functions
- ✅ CASE statements for conditional logic
- ✅ Date functions and calculations
- ✅ Subqueries and complex filtering

### **Business Intelligence**
- ✅ Inventory management analytics
- ✅ Customer behavior analysis
- ✅ Financial calculations (fines, revenue)
- ✅ Operational reporting and KPIs

## 🛠️ Technologies Used

- **Database**: Microsoft SQL Server 
- **Design**: Normalized relational database (3NF)
- **Features**: Views, Constraints, Indexes, Sample Data
- **Documentation**: Markdown, ER Diagrams

## 🤝 Contributing

Contributions are welcome! Here are some ways you can contribute:

1. **Fork the repository**
2. **Create a feature branch** (`git checkout -b feature/AmazingFeature`)
3. **Add your improvements**:
   - Additional query examples
   - Extended database features (reservations, ratings, etc.)
   - Performance optimizations
   - Documentation improvements
4. **Commit your changes** (`git commit -m 'Add some AmazingFeature'`)
5. **Push to the branch** (`git push origin feature/AmazingFeature`)
6. **Open a Pull Request**

### **Suggested Extensions**
- 📅 Book reservation system
- ⭐ Book rating and review system
- 📧 Automated overdue notifications
- 📈 Advanced analytics dashboard
- 🔐 User authentication and permissions

## 📈 Performance Considerations

- **Indexes** on frequently queried columns (title, author_name, member_email)
- **Foreign key constraints** for data integrity
- **Normalized design** to reduce data redundancy
- **Optimized queries** with proper JOIN usage
- **Views** for commonly accessed data patterns

## 🎯 Use Cases

This project is perfect for:
- **Portfolio Development** - Showcase SQL skills to employers
- **Interview Preparation** - Practice common SQL interview questions
- **Learning Resource** - Hands-on database design experience
- **Teaching Tool** - Classroom examples for database courses
- **Foundation Project** - Base for more complex applications

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- Inspired by real-world library management systems
- Sample data includes popular books and well-known authors
- Designed for educational and portfolio purposes
- Special thanks to the SQL and database community for best practices

## 📞 Contact

**Vadde Hemanth Sai Kumar** - saikumarjoey123@gmail.com

**Project Link**:https://github.com/VaddeHemanthSaiKumar/Library_Management_SQL

**LinkedIn**:https://www.linkedin.com/in/vadde-hemanth-sai-kumar/

---

⭐ **If this project helped you, please consider giving it a star!** ⭐

---

## 🔖 Tags

`sql` `database` `mysql` `portfolio-project` `library-management` `data-analysis` `beginner-friendly` `intermediate-sql` `database-design` `learning-resource`
