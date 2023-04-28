INSERT INTO clients (client_id, name, address, phone, email)
VALUES
    (1, 'James', '123 Main St, SomePlace USA', '555-1234', 'james@email.com'),
    (2, 'John', '456 Park Ave, SomePlace USA', '555-5678', 'john@email.com'),
    (3, 'Bob', '789 Border St, SomePlace USA', '555-9012', 'bob@email.com');

INSERT INTO accounts (account_id, account_number, balance, account_type, created_at, client_id)
VALUES
    (1001, '123456789', 5000.00, 'Checking', '2022-01-01', 1),
    (1002, '987654321', 10000.00, 'Savings', '2022-01-01', 2),
    (1003, '444444444', 2500.00, 'Checking', '2022-01-01', 3);

INSERT INTO transactions (transaction_id, transaction_date, transaction_time, transaction_type, amount, from_account_id, to_account_id)
VALUES
    (1, '2023-01-02', '10:00:00', 'Transfer', 1000.00, 1001, 1002),
    (2, '2023-01-02', '11:00:00', 'Transfer', 500.00, 1001, 1003),
    (3, '2023-01-03', '12:00:00', 'Transfer', 1000.00, 1001, 1003),
    (4, '2023-01-04', '13:00:00', 'Transfer', 500.00, 1002, 1001),
    (5, '2023-01-05', '14:00:00', 'Transfer', 250.00, 1002, 1003),
    (6, '2023-01-06', '15:00:00', 'Transfer', 500.00, 1002, 1003);

INSERT INTO credit_cards (credit_card_id, credit_card_number, credit_limit, balance, created_at, client_id)
VALUES
    (1, '1111222233334444', 5000.00, 1000.00, '2022-01-01', 1),
    (2, '5555666677778888', 10000.00, 0.00, '2022-01-01', 3);

INSERT INTO payments (payment_id, payment_date, payment_time, amount, from_account_id, to_credit_card_id, to_account_id)
VALUES
    (1, '2023-01-07', '16:00:00', 100.00, 1001, 1, 1002),
    (2, '2023-01-08', '17:00:00', 500.00, 1003, 2, 1001),
    (3, '2023-01-09', '18:00:00', 250.00, 1002, 1, 1002);
