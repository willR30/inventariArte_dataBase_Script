--cantidad de equipo de una categoria 
CREATE VIEW EquipmentCountByCategory AS
SELECT c.id AS category_id, c.name AS category_name, COUNT(e.id) AS equipment_count
FROM Equipment_Category c
LEFT JOIN Equipment e ON c.id = e.id_equipment_category
GROUP BY c.id, c.name;
