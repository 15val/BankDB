CREATE DATABASE bank CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE bank;

CREATE TABLE clients (
                         client_id INT PRIMARY KEY,
                         name VARCHAR(255),
                         address VARCHAR(255),
                         phone VARCHAR(20),
                         email VARCHAR(255)
);

CREATE TABLE accounts (
                          account_id INT PRIMARY KEY,
                          account_number VARCHAR(20),
                          balance DECIMAL(10,2),
                          account_type VARCHAR(20),
                          created_at DATE,
                          client_id INT REFERENCES clients(client_id)
);

CREATE TABLE transactions (
                              transaction_id INT PRIMARY KEY,
                              transaction_date DATE,
                              transaction_time TIME,
                              transaction_type VARCHAR(20),
                              amount DECIMAL(10,2),
                              from_account_id INT REFERENCES accounts(account_id),
                              to_account_id INT REFERENCES accounts(account_id)
);

CREATE TABLE credit_cards (
                              credit_card_id INT PRIMARY KEY,
                              credit_card_number VARCHAR(16),
                              credit_limit DECIMAL(10,2),
                              balance DECIMAL(10,2),
                              created_at DATE,
                              client_id INT REFERENCES clients(client_id)
);

CREATE TABLE payments (
                          payment_id INT PRIMARY KEY,
                          payment_date DATE,
                          payment_time TIME,
                          amount DECIMAL(10,2),
                          from_account_id INT REFERENCES accounts(account_id),
                          to_credit_card_id INT REFERENCES credit_cards(credit_card_id),
                          to_account_id INT REFERENCES accounts(account_id)
);