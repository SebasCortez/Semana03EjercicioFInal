use SistemaVentas

-- Insertar datos en la tabla Proveedores
INSERT INTO Proveedores (IDProveedor, NombreProveedor, Direccion, Telefono)
VALUES 
(1, 'Distribuidora Alimentos S.A.', 'Av. Industrial 1234', 1145678901),
(2, 'Tecnología Avanzada Ltda.', 'Calle Tech 567', 1156789012),
(3, 'Muebles del Sur S.R.L.', 'Ruta 8 Km 25', 1167890123),
(4, 'Librería Educativa', 'Av. Libros 789', 1178901234),
(5, 'Electrohogar Nacional', 'Bv. Artigas 456', 1189012345);

-- Insertar datos en la tabla Productos
INSERT INTO Productos (IDProducto, NombreProducto, Stock, Precio, IDProveedor)
VALUES
(101, 'Arroz 1kg', 150, 120.50, 1),
(102, 'Leche entera 1L', 200, 85.75, 1),
(103, 'Notebook Gamer', 30, 125000.00, 2),
(104, 'Smartphone X10', 45, 89999.99, 2),
(105, 'Sofá 3 plazas', 12, 45999.00, 3),
(106, 'Mesa de comedor', 8, 32999.50, 3),
(107, 'Cuaderno universitario', 300, 450.00, 4),
(108, 'Lapicera azul', 500, 120.00, 4),
(109, 'Heladera no frost', 25, 125999.00, 5),
(110, 'Lavarropas automático', 18, 89999.00, 5);

-- Insertar datos en la tabla Clientes
INSERT INTO Clientes (DNI, Nombres, Apellido, Telefono, Direccion)
VALUES
(30123456, 'Juan Carlos', 'Pérez', 1156789012, 'Av. Siempre Viva 742'),
(28987654, 'María Laura', 'Gómez', 1167890123, 'Calle Falsa 123'),
(33456789, 'Carlos Alberto', 'Rodríguez', 1178901234, 'Bv. Artigas 3456'),
(27876543, 'Ana María', 'López', 1189012345, 'Av. Rivera 789'),
(35678901, 'Pedro Pablo', 'Martínez', 1190123456, 'Rambla República 5678');

-- Insertar datos en la tabla Pedidos
INSERT INTO Pedidos (IDPedido, FechaPedido, Direccion, DescripcionPedido)
VALUES
(1001, '2023-05-10', 'Av. Siempre Viva 742', 'Pedido semanal de alimentos'),
(1002, '2023-05-12', 'Calle Falsa 123', 'Pedido de tecnología'),
(1003, '2023-05-15', 'Bv. Artigas 3456', 'Muebles para nuevo departamento'),
(1004, '2023-05-18', 'Av. Rivera 789', 'Material de oficina para escuela'),
(1005, '2023-05-20', 'Rambla República 5678', 'Electrodomésticos para casa nueva');

-- Insertar datos en la tabla Facturas
INSERT INTO Facturas (IDFactura, FechaEmision, MontoTotal)
VALUES
('FAC-2023-0001', '2023-05-10', 246.25),
('FAC-2023-0002', '2023-05-12', 214999.99),
('FAC-2023-0003', '2023-05-15', 78998.50),
('FAC-2023-0004', '2023-05-18', 570.00),
('FAC-2023-0005', '2023-05-20', 215998.00);

-- Insertar datos en la tabla Compras
INSERT INTO Compras (IDCompra, FechaCompra, DNI, IDPedido, IDFactura, IDProducto)
VALUES
('COMP-2023-0001', '2023-05-10', 30123456, 1001, 'FAC-2023-0001', 101),
('COMP-2023-0002', '2023-05-10', 30123456, 1001, 'FAC-2023-0001', 102),
('COMP-2023-0003', '2023-05-12', 28987654, 1002, 'FAC-2023-0002', 103),
('COMP-2023-0004', '2023-05-15', 33456789, 1003, 'FAC-2023-0003', 105),
('COMP-2023-0005', '2023-05-15', 33456789, 1003, 'FAC-2023-0003', 106),
('COMP-2023-0006', '2023-05-18', 27876543, 1004, 'FAC-2023-0004', 107),
('COMP-2023-0007', '2023-05-18', 27876543, 1004, 'FAC-2023-0004', 108),
('COMP-2023-0008', '2023-05-20', 35678901, 1005, 'FAC-2023-0005', 109),
('COMP-2023-0009', '2023-05-20', 35678901, 1005, 'FAC-2023-0005', 110);