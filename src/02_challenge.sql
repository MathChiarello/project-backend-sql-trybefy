USE Trybefy;

CREATE TABLE plans (
    id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(50) NOT NULL, price FLOAT(5, 2) NOT NULL
);

CREATE TABLE users (
    id INTEGER AUTO_INCREMENT PRIMARY KEY, full_name VARCHAR(50) NOT NULL, email VARCHAR(50) UNIQUE NOT NULL, birthday DATE NOT NULL, active BOOLEAN DEFAULT TRUE NOT NULL, plan_id INTEGER NOT NULL, FOREIGN KEY (plan_id) REFERENCES plans (id)
);

INSERT INTO
    plans (name, price)
VALUES ('Anual', 39.90),
    ('Mensal', 5.90),
    ('Trimestral', 19.90);

INSERT INTO
    users (
        full_name, email, birthday, active, plan_id
    )
VALUES (
        'Pedro', 'pedro@trybefy.com', '1990-01-01', TRUE, 1
    ),
    (
        'Camila', 'camila@trybefy.com', '1988-12-01', TRUE, 1
    ),
    (
        'Guilherme', 'guilherme@trybefy.com', '1988-12-01', TRUE, 2
    ),
    (
        'Andressa', 'andressa@trybefy.com', '1984-07-20', FALSE, 3
    ),
    (
        'Luís', 'luis@trybefy.com', '2000-01-01', TRUE, 2
    ),
    (
        'Cássia', 'cassia@trybefy.com', '1995-12-01', TRUE, 1
    ),
    (
        'Simone', 'simone@trybefy.com', '1988-12-01', TRUE, 1
    ),
    (
        'Rogério', 'rogerio@trybefy.com', '1979-12-01', TRUE, 3
    ),
    (
        'Júlio', 'julio@trybefy.com', '1994-06-20', FALSE, 2
    ),
    (
        'Melissa', 'melissa@trybefy.com', '1997-04-11', TRUE, 2
    );