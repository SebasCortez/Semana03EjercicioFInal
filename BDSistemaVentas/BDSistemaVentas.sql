use SistemaVentas

CREATE TABLE Clientes (
    DNI INT PRIMARY KEY,
    Nombres VARCHAR(100) NOT NULL,
    Apellido VARCHAR(100) NOT NULL,
    Telefono INT,
    Direccion VARCHAR(200)
);

CREATE TABLE Proveedores (
    IDProveedor INT PRIMARY KEY,
    NombreProveedor VARCHAR(100) NOT NULL,
    Direccion VARCHAR(200),
    Telefono INT
);

CREATE TABLE Productos (
    IDProducto INT PRIMARY KEY,
    NombreProducto VARCHAR(100) NOT NULL,
    Stock INT NOT NULL,
    Precio DECIMAL(10, 2) NOT NULL,
    IDProveedor INT,
    FOREIGN KEY (IDProveedor) REFERENCES Proveedores(IDProveedor)
);

CREATE TABLE Pedidos (
    IDPedido INT PRIMARY KEY,
    FechaPedido DATE NOT NULL,
    Direccion VARCHAR(200) NOT NULL,
    DescripcionPedido VARCHAR(500)
);

CREATE TABLE Facturas (
    IDFactura VARCHAR(50) PRIMARY KEY,
    FechaEmision DATE NOT NULL,
    MontoTotal DECIMAL(10, 2) NOT NULL
);

CREATE TABLE Compras (
    IDCompra VARCHAR(50) PRIMARY KEY,
    FechaCompra DATE NOT NULL,
    DNI INT,
    IDPedido INT,
    IDFactura VARCHAR(50),
    IDProducto INT,
    FOREIGN KEY (DNI) REFERENCES Clientes(DNI),
    FOREIGN KEY (IDPedido) REFERENCES Pedidos(IDPedido),
    FOREIGN KEY (IDFactura) REFERENCES Facturas(IDFactura),
    FOREIGN KEY (IDProducto) REFERENCES Productos(IDProducto)
);