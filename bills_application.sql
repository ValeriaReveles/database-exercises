USE valeria;

-- user table created for user information and login information.
CREATE TABLE users (
    user_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    first_name VARCHAR (100) NOT NULL ,
    last_name VARCHAR(100) NOT NULL ,
    username VARCHAR (100) NOT NULL ,
    password VARCHAR (100) NOT NULL ,

    PRIMARY KEY (user_id)
);


INSERT INTO users (first_name, last_name, username, password)
VALUES ('Douglas', 'Adams', 'dougie123',   'hello123'),
       ('Joe',    'Mahma', 'bigMom45',   'qwerty'),
       ('Jacques',    'Strap', 'zaFrenchOpen', 'qwerty12345'),
       ('Al',    'Cohalic', 'aa1993', '123456'),
       ('Seymour',   'Butz', 'mYaNaconda10', 'password'),
       ('Mike',   'Rotch', 'stinkyCheese12', 'acde1234'),
       ('Ivana',   'Tinkle', 'tinklebell45', 'iloveyou'),
       ('Bianca',   'Del Rio', 'hurricaneBianca14', 'dragon123'),
       ('Yuri',   'Nator', 'molotov365', 'monkey41'),
       ('Moe', 'Ron', 'montysPython91', 'valeria10');

-- created separate table for bill information only
CREATE TABLE bills (
   billing_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
   bill_type VARCHAR (100) NOT NULL ,
   amount INT NOT NULL ,
   due_date INT NOT NULL ,


   PRIMARY KEY (billing_id)
);

INSERT INTO bills (bill_type, amount, due_date)
VALUES ('electric', 100, 2022-09-02 , 'e-check'),
       ('credit card', 500,2022-09-28, 'credit card'),
       ('water',  150, 2022-9-15, 'e-check' ),
       ('loan', 600, 2022-09-13, 'credit card' ),
       ('phone', 75, 2022-09-07,  'debit card');

-- payment method type
CREATE TABLE payments (
      id INT UNSIGNED NOT NULL AUTO_INCREMENT,
      type VARCHAR (100) NOT NULL ,

      PRIMARY KEY (id)
);

INSERT INTO payments(type)
VALUES ('e-check'),
       ('credit card'),
       ('direct-deposit'),
       ('paypal'),
       ('IOU'),
       ('debit card');

-- table for loan specific information:
CREATE TABLE loans (
   loan_id INT UNSIGNED NOT NULL AUTO_INCREMENT,
   loan_type VARCHAR (100) NOT NULL ,
   amount INT NOT NULL ,
   due_date INT NOT NULL ,

   PRIMARY KEY (loan_id)
);


INSERT INTO loans (loan_type, amount, due_date)
VALUES ('mortgage', 1500, 2022-09-02),
       ('student loans', 800, 2022-09-28),
       ('business loans', 700, 2022-9-15),
       ('federal loans', 650, 2022-09-13),
       ('Other', 200, 2022-09-07);


-- created associative table for users to see bill and payment info

CREATE TABLE users_bills_payments (
    finalBill_Id int primary key,
     user_id INTEGER UNSIGNED NOT NULL,
     billing_id INTEGER UNSIGNED NOT NULL,
     payments_id INTEGER UNSINGED NOT NULL,
     FOREIGN KEY (user_id) REFERENCES users(user_id),
     FOREIGN KEY (billing_id) REFERENCES bills(billing_id),
     FOREIGN KEY (payments_id)  REFERENCES payments(id)
);

INSERT INTO users_bills_payments(user_id, billing_id, payments_id)
VALUES (1, 2, 6), (1, 3, 3), (2, 4, 5), (3, 1, 2),
       (3, 2, 1), (3, 3, 3), (3, 4, 6), (4, 2, 1), (5, 1, 4);



-- created associative table for users to see loan specific and payment info
CREATE TABLE users_loans_payments (
      user_id INTEGER UNSIGNED NOT NULL,
      loan_id INTEGER UNSIGNED NOT NULL,
      payments_id INTEGER UNSIGNED NOT NULL,
      FOREIGN KEY (user_id) REFERENCES users(user_id),
      FOREIGN KEY (loan_id) REFERENCES loans(loan_id),
      FOREIGN KEY (payments_id)  REFERENCES payments(id)
);

INSERT INTO users_loans_payments(user_id, loan_id, payments_id)
VALUES (1, 2, 6), (1, 3, 3), (2, 4, 5), (3, 1, 2),
       (3, 2, 1), (3, 3, 3), (3, 4, 6), (4, 2, 1), (5, 1, 4);