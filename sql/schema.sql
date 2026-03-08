
-- Database: learning

-- DROP DATABASE IF EXISTS learning;

CREATE DATABASE learning
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'Spanish_Spain.1252'
    LC_CTYPE = 'Spanish_Spain.1252'
    LOCALE_PROVIDER = 'libc'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;


CREATE TABLE IF NOT EXISTS clientes (
    id          SERIAL PRIMARY KEY,
    nombre      VARCHAR(100) NOT NULL,
    ciudad      VARCHAR(50)
);
 
CREATE TABLE IF NOT EXISTS pedidos (
    id          SERIAL PRIMARY KEY,
    cliente_id  INTEGER REFERENCES clientes(id),
    total       DECIMAL(10,2),
    fecha       DATE
);
 
-- PASO 2: Insertar datos de prueba
INSERT INTO clientes (nombre, ciudad) VALUES
    ('Ana García',    'Madrid'),
    ('Juan López',    'Barcelona'),
    ('María Torres',  'Madrid'),
    ('Pedro Ruiz',    'Sevilla'),
    ('Laura Martín',  'Barcelona');
 
INSERT INTO pedidos (cliente_id, total, fecha) VALUES
    (1, 150.00, '2026-01-15'),
    (1, 320.50, '2026-02-20'),
    (2, 89.99,  '2026-01-10'),
    (3, 450.00, '2026-02-05'),
    (3, 120.00, '2026-03-01'),
    (4, 75.50,  '2026-01-22'),
    (5, 890.00, '2026-02-14');
    (5, 50.00, '2026-02-15'),
    (5, 32.50, '2026-03-20'),
    (5, 890.99,  '2026-01-15'),
    (4, 50.00, '2026-02-25'),
    (4, 12.00, '2026-03-21'),
    (3, 750.50,  '2026-01-12'),
    (3, 95.00, '2026-01-14');
    (2, 10.00, '2026-01-15'),
    (3, 20.50, '2026-03-01'),
    (2, 19.99,  '2026-01-01'),
    (1, 250.00, '2026-02-02'),
    (3, 125.00, '2026-03-05'),
    (1, 7.50,  '2026-01-13'),
    (2, 90.00, '2026-02-13');
    (5, 150.00, '2026-01-13'),
    (5, 25.50, '2026-02-26'),
    (5, 9.99,  '2026-01-17'),
    (4, 550.00, '2026-02-05'),
    (4, 182.00, '2026-03-10'),
    (4, 92.50,  '2026-02-20'),
    (4, 990.00, '2026-02-15');
