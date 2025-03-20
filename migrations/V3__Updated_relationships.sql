-- V3__Updated_relationships
-- Change relationships between Consultas, Diagnosticos & Tratamientos

ALTER TABLE diagnosticos
  DROP COLUMN IF EXISTS tratamiento,
  ADD COLUMN IF NOT EXISTS nombre varchar,
  ADD COLUMN IF NOT EXISTS consulta_id int REFERENCES consultas (id);

ALTER TABLE tratamientos
  ADD COLUMN IF NOT EXISTS frecuencia time,
  ADD COLUMN IF NOT EXISTS diagnostico_id int REFERENCES diagnosticos (id);
  
