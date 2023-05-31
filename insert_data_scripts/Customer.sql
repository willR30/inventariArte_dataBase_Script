-- Script de inserción de 10 registros en la tabla Customer con nombres de empresas relacionados con frutas
INSERT INTO Customer (full_name, type) VALUES
('Juan Pérez', (SELECT id FROM TypeCustomer WHERE customerType = 'Persona Natural')),
('Manzana S.A.', (SELECT id FROM TypeCustomer WHERE customerType = 'Empresa')),
('Luis Rodríguez', (SELECT id FROM TypeCustomer WHERE customerType = 'Persona Natural')),
('Pera Solutions', (SELECT id FROM TypeCustomer WHERE customerType = 'Empresa')),
('Los Angelitos', (SELECT id FROM TypeCustomer WHERE customerType = 'O.N.G.')),
('NaranjaSoft', (SELECT id FROM TypeCustomer WHERE customerType = 'Empresa')),
('Carlos Gómez', (SELECT id FROM TypeCustomer WHERE customerType = 'Empresa')),
('Frambuesa Systems', (SELECT id FROM TypeCustomer WHERE customerType = 'Empresa')),
('Manuel Torres', (SELECT id FROM TypeCustomer WHERE customerType = 'Persona Natural')),
('Sandía Consulting', (SELECT id FROM TypeCustomer WHERE customerType = 'Empresa')),
('Mango Corporation', (SELECT id FROM TypeCustomer WHERE customerType = 'Empresa')),
('Kiwi Solutions', (SELECT id FROM TypeCustomer WHERE customerType = 'Empresa')),
('Granada Ltd.', (SELECT id FROM TypeCustomer WHERE customerType = 'Empresa')),
('Cereza Enterprises', (SELECT id FROM TypeCustomer WHERE customerType = 'Empresa')),
('Limón Innovations', (SELECT id FROM TypeCustomer WHERE customerType = 'Empresa')),
('Fresa Technologies', (SELECT id FROM TypeCustomer WHERE customerType = 'Empresa')),
('Durazno Systems', (SELECT id FROM TypeCustomer WHERE customerType = 'Empresa')),
('Coco Group', (SELECT id FROM TypeCustomer WHERE customerType = 'Empresa')),
('Guayaba Solutions', (SELECT id FROM TypeCustomer WHERE customerType = 'Empresa')),
('Piña Corporation', (SELECT id FROM TypeCustomer WHERE customerType = 'Empresa')),
('Mickey Mouse', (SELECT id FROM TypeCustomer WHERE customerType = 'Persona Natural')),
('Luis Rodríguez', (SELECT id FROM TypeCustomer WHERE customerType = 'Persona Natural')),
('Bugs Bunny', (SELECT id FROM TypeCustomer WHERE customerType = 'Persona Natural')),
('Pedro Martínez', (SELECT id FROM TypeCustomer WHERE customerType = 'Persona Natural')),
('Dora la Exploradora', (SELECT id FROM TypeCustomer WHERE customerType = 'Persona Natural')),
('Carlos Gómez', (SELECT id FROM TypeCustomer WHERE customerType = 'Persona Natural')),
('Popeye el Marino', (SELECT id FROM TypeCustomer WHERE customerType = 'Persona Natural')),
('Manuel Torres', (SELECT id FROM TypeCustomer WHERE customerType = 'Persona Natural')),
('Bob Esponja', (SELECT id FROM TypeCustomer WHERE customerType = 'Persona Natural')),
('Juan Pérez', (SELECT id FROM TypeCustomer WHERE customerType = 'Persona Natural')),
('María García', (SELECT id FROM TypeCustomer WHERE customerType = 'Persona Natural')),
('Luis Rodríguez', (SELECT id FROM TypeCustomer WHERE customerType = 'Persona Natural')),
('Ana López', (SELECT id FROM TypeCustomer WHERE customerType = 'Persona Natural')),
('Pedro Martínez', (SELECT id FROM TypeCustomer WHERE customerType = 'Persona Natural')),
('Laura Fernández', (SELECT id FROM TypeCustomer WHERE customerType = 'Persona Natural')),
('Carlos Gómez', (SELECT id FROM TypeCustomer WHERE customerType = 'Persona Natural')),
('Sofía Morales', (SELECT id FROM TypeCustomer WHERE customerType = 'Persona Natural')),
('Manuel Torres', (SELECT id FROM TypeCustomer WHERE customerType = 'Persona Natural')),
('Isabel Sánchez', (SELECT id FROM TypeCustomer WHERE customerType = 'Persona Natural')),
('Roberto Gómez', (SELECT id FROM TypeCustomer WHERE customerType = 'Persona Natural')),
('Fernanda Silva', (SELECT id FROM TypeCustomer WHERE customerType = 'Persona Natural')),
('Javier Hernández', (SELECT id FROM TypeCustomer WHERE customerType = 'Persona Natural')),
('Gabriela Torres', (SELECT id FROM TypeCustomer WHERE customerType = 'Persona Natural')),
('Daniel Ramírez', (SELECT id FROM TypeCustomer WHERE customerType = 'Persona Natural')),
('Carolina Martínez', (SELECT id FROM TypeCustomer WHERE customerType = 'Persona Natural')),
('Héctor Vargas', (SELECT id FROM TypeCustomer WHERE customerType = 'Persona Natural')),
('Valeria Castro', (SELECT id FROM TypeCustomer WHERE customerType = 'Persona Natural')),
('Rodrigo Soto', (SELECT id FROM TypeCustomer WHERE customerType = 'Persona Natural')),
('Cristina López', (SELECT id FROM TypeCustomer WHERE customerType = 'Persona Natural')),
('Fundación Tarta de Fresa', (SELECT id FROM TypeCustomer WHERE customerType = 'O.N.G.')),
('Asociación Brownie Solidario', (SELECT id FROM TypeCustomer WHERE customerType = 'O.N.G.')),
('ONG Torta de Chocolate', (SELECT id FROM TypeCustomer WHERE customerType = 'O.N.G.')),
('Asociación Helado Solidario', (SELECT id FROM TypeCustomer WHERE customerType = 'O.N.G.')),
('Fundación Cupcake Esperanza', (SELECT id FROM TypeCustomer WHERE customerType = 'O.N.G.')),
('ONG Pastel de Manzana', (SELECT id FROM TypeCustomer WHERE customerType = 'O.N.G.')),
('Asociación Donut Solidario', (SELECT id FROM TypeCustomer WHERE customerType = 'O.N.G.')),
('Fundación Cheesecake para Todos', (SELECT id FROM TypeCustomer WHERE customerType = 'O.N.G.')),
('ONG Galleta Solidaria', (SELECT id FROM TypeCustomer WHERE customerType = 'O.N.G.')),
('Asociación Pie de Limón', (SELECT id FROM TypeCustomer WHERE customerType = 'O.N.G.')),
('Fundación Macaron Solidario', (SELECT id FROM TypeCustomer WHERE customerType = 'O.N.G.')),
('Asociación Flan de Caramelo', (SELECT id FROM TypeCustomer WHERE customerType = 'O.N.G.')),
('ONG Tiramisú Solidario', (SELECT id FROM TypeCustomer WHERE customerType = 'O.N.G.')),
('Fundación Bizcocho de Fresa', (SELECT id FROM TypeCustomer WHERE customerType = 'O.N.G.')),
('ONG Pudín de Vainilla', (SELECT id FROM TypeCustomer WHERE customerType = 'O.N.G.')),
('Asociación Soufflé Esperanza', (SELECT id FROM TypeCustomer WHERE customerType = 'O.N.G.')),
('Fundación Trufa Solidaria', (SELECT id FROM TypeCustomer WHERE customerType = 'O.N.G.')),
('ONG Pastel de Zanahoria', (SELECT id FROM TypeCustomer WHERE customerType = 'O.N.G.')),
('Asociación Galleta de Avena', (SELECT id FROM TypeCustomer WHERE customerType = 'O.N.G.')),
('Fundación Mousse de Chocolate', (SELECT id FROM TypeCustomer WHERE customerType = 'O.N.G.')),
('Tech Solutions', (SELECT id FROM TypeCustomer WHERE customerType = 'Empresa')),
('InnovaSoft', (SELECT id FROM TypeCustomer WHERE customerType = 'Empresa')),
('ByteTech', (SELECT id FROM TypeCustomer WHERE customerType = 'Empresa')),
('CodeMaster', (SELECT id FROM TypeCustomer WHERE customerType = 'Empresa')),
('Softworks', (SELECT id FROM TypeCustomer WHERE customerType = 'Empresa')),
('Digital Systems', (SELECT id FROM TypeCustomer WHERE customerType = 'Empresa')),
('TechnoLogic', (SELECT id FROM TypeCustomer WHERE customerType = 'Empresa')),
('Software Solutions', (SELECT id FROM TypeCustomer WHERE customerType = 'Empresa')),
('ByteCraft', (SELECT id FROM TypeCustomer WHERE customerType = 'Empresa')),
('Innovative Tech', (SELECT id FROM TypeCustomer WHERE customerType = 'Empresa'));







