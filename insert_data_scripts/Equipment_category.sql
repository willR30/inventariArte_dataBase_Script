-- Inserción de categorías de equipos
INSERT INTO Equipment_Category (name, description)
VALUES ('Productos químicos', 'Sustancias químicas para reparaciones');

INSERT INTO Equipment_Category (name, description)
VALUES ('Destornilladores', 'Herramientas para desmontar y ensamblar componentes de computadoras');

INSERT INTO Equipment_Category (name, description)
VALUES ('Soldadores', 'Equipos para soldar y reparar soldaduras en placas de circuito');

INSERT INTO Equipment_Category (name, description)
VALUES ('Multímetros', 'Instrumentos para medir voltajes, corrientes y resistencias en componentes electrónicos');

INSERT INTO Equipment_Category (name, description)
VALUES ('Extractor de calor', 'Dispositivos para remover el calor excesivo de los componentes de la computadora');

INSERT INTO Equipment_Category (name, description)
VALUES ('Kit de limpieza', 'Conjunto de herramientas y productos para limpiar y mantener la computadora');

INSERT INTO Equipment_Category (name, description)
VALUES ('Pinzas antiestáticas', 'Herramientas para manipular componentes electrónicos sin dañarlos por electricidad estática');

INSERT INTO Equipment_Category (name, description)
VALUES ('Ventiladores de repuesto', 'Ventiladores adicionales para reemplazar los existentes en la computadora');


-- Mostrar las categorías insertadas
SELECT * FROM Equipment_Category;
