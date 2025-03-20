-- V4__Update_nullability.sql
-- Some values in the tables were not correctly initialized as per the ERD

ALTER TABLE citas
  ADD COLUMN IF NOT EXISTS nombre varchar;

ALTER TABLE consultas
  ADD COLUMN IF NOT EXISTS cuestionario_id int REFERENCES cuestionarios (id);


ALTER TABLE cuestionarios
  ALTER COLUMN activo SET NOT NULL;

ALTER TABLE diagnosticos
  ALTER COLUMN nombre SET NOT NULL,
  ALTER COLUMN consulta_id SET NOT NULL;

ALTER TABLE examenes
  ALTER COLUMN consulta_id DROP NOT NULL;

ALTER TABLE pacientes
  ALTER COLUMN fecha_nacimiento SET NOT NULL,
  ALTER COLUMN sexo SET NOT NULL;

ALTER TABLE tratamientos
  ALTER COLUMN frecuencia SET NOT NULL,
  ALTER COLUMN diagnostico_id SET NOT NULL;
