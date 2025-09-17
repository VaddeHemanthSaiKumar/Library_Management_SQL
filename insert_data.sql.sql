INSERT INTO categories (category_name, description) VALUES
('Fiction', 'Novels, short stories, and fictional works including fantasy, romance, and adventure'),
('Non-Fiction', 'Factual books, biographies, memoirs, and educational content'),
('Science', 'Scientific research, textbooks, discoveries, and technical literature'),
('History', 'Historical events, biographies of historical figures, and cultural studies'),
('Technology', 'Computer science, programming, software development, and tech trends'),
('Business', 'Management, economics, entrepreneurship, and business strategies'),
('Art & Literature', 'Poetry, art books, literary criticism, and creative writing guides'),
('Health & Medicine', 'Medical textbooks, health guides, fitness, and wellness research'),
('Mystery & Thriller', 'Detective stories, crime novels, suspense, and psychological thrillers'),
('Biography', 'Life stories of notable personalities, memoirs, and autobiographical works');

INSERT INTO authors (author_name, birth_year, nationality, biography) VALUES
('J.K. Rowling', 1965, 'British', 'British author best known for the Harry Potter fantasy series'),
('Stephen King', 1947, 'American', 'American author of horror, supernatural fiction, often called the ''Master of Horror'''),
('Agatha Christie', 1890, 'British', 'English writer known for her 66 detective novels and 14 short story collections'),
('Isaac Asimov', 1920, 'American', 'American writer and professor of biochemistry, best known for his works of science fiction'),
('Malcolm Gladwell', 1963, 'Canadian', 'English-born Canadian journalist, author, and public speaker'),
('Walter Isaacson', 1952, 'American', 'American author, journalist, and professor known for his biographies'),
('Dale Carnegie', 1888, 'American', 'American writer and lecturer, developer of self-improvement courses'),
('Dan Brown', 1964, 'American', 'American author best known for his thriller novels, including The Da Vinci Code'),
('Yuval Noah Harari', 1976, 'Israeli', 'Israeli public intellectual, historian, and professor'),
('Michelle Obama', 1964, 'American', 'American attorney and author, former First Lady of the United States'),
('Tara Westover', 1986, 'American', 'American memoirist, essayist and historian, known for ''Educated'''),
('Bill Bryson', 1951, 'American', 'American-British author of humorous books on travel, science and history');

INSERT INTO members (member_name, email, phone_number, address, membership_type, status) VALUES
('Alice Johnson', 'alice.johnson@email.com', '555-0101', '123 Main St, Apt 2B, Springfield, IL 62701', 'Student', 'Active'),
('Bob Smith', 'bob.smith@email.com', '555-0102', '456 Oak Avenue, Springfield, IL 62702', 'Faculty', 'Active'),
('Carol Davis', 'carol.davis@email.com', '555-0103', '789 Pine Street, Springfield, IL 62703', 'General', 'Active'),
('David Wilson', 'david.wilson@email.com', '555-0104', '321 Elm Street, Springfield, IL 62704', 'Student', 'Active'),
('Eva Brown', 'eva.brown@email.com', '555-0105', '654 Maple Drive, Springfield, IL 62705', 'General', 'Active'),
('Frank Miller', 'frank.miller@email.com', '555-0106', '987 Cedar Lane, Springfield, IL 62706', 'Faculty', 'Active'),
('Grace Lee', 'grace.lee@email.com', '555-0107', '147 Birch Road, Springfield, IL 62707', 'Student', 'Active'),
('Henry Garcia', 'henry.garcia@email.com', '555-0108', '258 Walnut Street, Springfield, IL 62708', 'General', 'Suspended'),
('Isabella Martinez', 'isabella.martinez@email.com', '555-0109', '369 Cherry Avenue, Springfield, IL 62709', 'Student', 'Active'),
('Jack Thompson', 'jack.thompson@email.com', '555-0110', '741 Willow Way, Springfield, IL 62710', 'General', 'Active'),
('Karen White', 'karen.white@email.com', '555-0111', '852 Poplar Place, Springfield, IL 62711', 'Faculty', 'Active'),
('Liam Anderson', 'liam.anderson@email.com', '555-0112', '963 Sycamore Street, Springfield, IL 62712', 'Student', 'Expired');

INSERT INTO books (title, author_id, category_id, isbn, publication_year, publisher, pages, copies_available, total_copies, shelf_location) VALUES
('Harry Potter and the Philosopher''s Stone', 1, 1, '978-0747532699', 1997, 'Bloomsbury Publishing', 223, 3, 5, 'A1-001'),
('Harry Potter and the Chamber of Secrets', 1, 1, '978-0747538493', 1998, 'Bloomsbury Publishing', 251, 2, 3, 'A1-002'),
('The Shining', 2, 1, '978-0307743657', 1977, 'Doubleday', 447, 2, 3, 'A1-015'),
('It', 2, 1, '978-0670813025', 1986, 'Viking Press', 1138, 1, 2, 'A1-016'),
('Murder on the Orient Express', 3, 9, '978-0062693662', 1934, 'Collins Crime Club', 256, 1, 2, 'A1-028'),
('And Then There Were None', 3, 9, '978-0062073488', 1939, 'Collins Crime Club', 264, 2, 3, 'A1-029'),
('Foundation', 4, 3, '978-0553293357', 1951, 'Gnome Press', 244, 2, 2, 'B2-005'),
('I, Robot', 4, 3, '978-0553294385', 1950, 'Gnome Press', 253, 1, 1, 'B2-018'),
('Outliers: The Story of Success', 5, 2, '978-0316017930', 2008, 'Little, Brown and Company', 309, 4, 4, 'C3-012'),
('The Tipping Point', 5, 2, '978-0316346627', 2000, 'Little, Brown and Company', 301, 2, 3, 'C3-033'),
('Steve Jobs', 6, 10, '978-1451648539', 2011, 'Simon & Schuster', 656, 1, 2, 'C3-025'),
('Einstein: His Life and Universe', 6, 10, '978-0743264747', 2007, 'Simon & Schuster', 675, 1, 1, 'C3-026'),
('How to Win Friends and Influence People', 7, 6, '978-0671027032', 1936, 'Simon & Schuster', 291, 3, 3, 'D4-008'),
('The Da Vinci Code', 8, 9, '978-0307474278', 2003, 'Doubleday', 454, 2, 4, 'A1-042'),
('Angels & Demons', 8, 9, '978-0671027360', 2000, 'Pocket Books', 736, 1, 2, 'A1-043'),
('Sapiens: A Brief History of Humankind', 9, 4, '978-0062316097', 2014, 'Harper', 443, 3, 4, 'E5-001'),
('Homo Deus: A Brief History of Tomorrow', 9, 4, '978-0062464316', 2016, 'Harper', 449, 2, 2, 'E5-002'),
('Becoming', 10, 10, '978-1524763138', 2018, 'Crown Publishing', 426, 4, 5, 'F6-001'),
('Educated', 11, 10, '978-0399590504', 2018, 'Random House', 334, 2, 3, 'F6-005'),
('A Short History of Nearly Everything', 12, 3, '978-0767908184', 2003, 'Broadway Books', 544, 1, 2, 'B2-025');

INSERT INTO borrowings (member_id, book_id, borrow_date, due_date, return_date, fine_amount, status) VALUES
(1, 1, '2024-08-15', '2024-08-29', '2024-08-27', 0.00, 'Returned'),
(3, 5, '2024-08-20', '2024-09-03', '2024-09-01', 0.00, 'Returned'),
(7, 10, '2024-08-25', '2024-09-08', '2024-09-06', 0.00, 'Returned'),
(1, 9, '2024-09-10', '2024-09-24', NULL, 0.00, 'Borrowed'),
(2, 3, '2024-09-12', '2024-09-26', NULL, 0.00, 'Borrowed'),
(4, 2, '2024-09-14', '2024-09-28', NULL, 0.00, 'Borrowed'),
(5, 4, '2024-08-15', '2024-08-29', NULL, 25.00, 'Overdue'),
(3, 14, '2024-08-20', '2024-09-03', NULL, 18.00, 'Overdue'),
(1, 7, '2024-09-01', '2024-09-15', NULL, 4.00, 'Overdue');

INSERT INTO staff (staff_name, email, phone_number, position, hire_date, salary) VALUES
('Sarah Thompson', 'sarah.thompson@library.edu', '555-9001', 'Manager', '2020-01-15', 65000.00),
('Michael Rodriguez', 'michael.rodriguez@library.edu', '555-9002', 'Librarian', '2021-03-20', 48000.00),
('Emily Chen', 'emily.chen@library.edu', '555-9003', 'Librarian', '2022-06-10', 47000.00),
('David Kumar', 'david.kumar@library.edu', '555-9004', 'Assistant', '2023-01-05', 35000.00),
('Jennifer Williams', 'jennifer.williams@library.edu', '555-9005', 'Librarian', '2021-09-12', 46000.00),
('Robert Taylor', 'robert.taylor@library.edu', '555-9006', 'Assistant', '2023-07-18', 33000.00);

