INSERT INTO pacientes (id, nombre, fecha_nacimiento, telefono, sexo)
VALUES
(1,'Juan Pérez', '1985-03-15', '555-1234', 'Masculino'),
(2,'María López', '1990-07-22', '555-5678', 'Femenino'),
(3,'Carlos Gómez', '1980-12-10', '555-9012', 'Masculino'),
(4,'Ana Martínez', '1995-06-18', '555-3456', 'Femenino'),
(5,'Pedro Ramírez', '1987-09-25', '555-7890', 'Masculino'),
(6,'Laura Fernández', '2000-01-30', '555-6543', 'Femenino'),
(7,'José Gutiérrez', '1978-11-12', '555-9876', 'Masculino'),
(8,'Andrea Torres', '1992-05-27', '555-3210', 'Femenino'),
(9,'Miguel Rodríguez', '1983-04-05', '555-2468', 'Masculino'),
(10,'Sofía Castillo', '1998-08-14', '555-1357', 'Femenino');

INSERT INTO citas (id, paciente_id, fecha, duracion) VALUES
(1, 1, '2025-03-07', '00:20:00'),
(2, 2, '2025-03-07', '00:20:00'),
(3, 3, '2025-03-07', '00:20:00'),
(4, 4, '2025-03-07', '00:20:00'),
(5, 5, '2025-03-07', '00:20:00'),
(6, 6, '2025-03-07', '00:20:00'),
(7, 7, '2025-03-07', '00:20:00'),
(8, 8, '2025-03-07', '00:20:00'),
(9, 9, '2025-03-07', '00:20:00'),
(10, 10, '2025-03-07', '00:20:00');

INSERT INTO diagnosticos (id, tratamiento, recomendacion)  
VALUES  
(1, 101, 'Tomar medicamento cada 8 horas'),  
(2, 102, 'Realizar ejercicios de rehabilitación'),  
(3, 103, 'Evitar exposición prolongada a pantallas'),  
(4, 104, 'Beber al menos 2 litros de agua al día'),  
(5, 105, 'Aplicar compresas frías en la zona afectada'),  
(6, 106, 'Seguir una dieta baja en grasas y azúcares'),  
(7, 107, 'Dormir al menos 7 horas diarias'),  
(8, 108, 'Evitar el consumo de alcohol y tabaco'),  
(9, 109, 'Asistir a terapia física dos veces por semana'),  
(10, 110, 'Usar lentes de descanso para leer o trabajar en la computadora');  

INSERT INTO consultas (id, paciente_id, motivo, diagnostico_id) VALUES
(1, 1,'Hipertensión', 1),
(2, 2, 'Gripe', 2),
(3, 3, 'Fractura', 3),
(4, 4, 'Embarazo', 4),
(5, 5, 'Migraña', 5),
(6, 6, 'Miopía', 6),
(7, 7, 'Acné', 7),
(8, 8, 'Diabetes', 8),
(9, 9, 'Ansiedad', 9),
(10, 10, 'Apendicitis', 10);

INSERT INTO tratamientos (id, componente_activo, presentacion, dosificacion, tiempo)  
VALUES  
(1, 'Paracetamol', 'Tableta', 500, '08:00:00'),  
(2, 'Ibuprofeno', 'Cápsula', 400, '12:00:00'),  
(3, 'Amoxicilina', 'Suspensión', 250, '06:00:00'),  
(4, 'Metformina', 'Tableta', 850, '24:00:00'),  
(5, 'Omeprazol', 'Cápsula', 20, '24:00:00'),  
(6, 'Loratadina', 'Tableta', 10, '24:00:00'),  
(7, 'Diazepam', 'Tableta', 5, '12:00:00'),  
(8, 'Salbutamol', 'Inhalador', 100, '06:00:00'),  
(9, 'Aspirina', 'Tableta', 100, '24:00:00'),  
(10, 'Ciprofloxacino', 'Tableta', 500, '12:00:00');  

INSERT INTO examenes (id, paciente_id, consulta_id, tipo, fecha, ruta_archivo)  
VALUES  
(1, 1, 1, 'Hemograma', '2025-03-01', '/archivos/examenes/hemograma_201_1001.pdf'),  
(2, 2, 2, 'Radiografía de tórax', '2025-03-02', '/archivos/examenes/rx_torax_202_1002.jpg'),  
(3, 3, 3, 'Electrocardiograma', '2025-03-03', '/archivos/examenes/ecg_203_1003.pdf'),  
(4, 4, 4, 'Resonancia magnética', '2025-03-04', '/archivos/examenes/rm_204_1004.dcm'),  
(5, 5, 5, 'Ecografía abdominal', '2025-03-05', '/archivos/examenes/eco_abdomen_205_1005.jpg'),  
(6, 6, 6, 'Tomografía computarizada', '2025-03-06', '/archivos/examenes/tc_206_1006.dcm'),  
(7, 7, 7, 'Prueba de glucosa', '2025-03-07', '/archivos/examenes/glucosa_207_1007.pdf'),  
(8, 8, 8, 'Prueba de función hepática', '2025-03-08', '/archivos/examenes/hepatica_208_1008.pdf'),  
(9, 9, 9, 'Cultivo de orina', '2025-03-09', '/archivos/examenes/cultivo_orina_209_1009.pdf'),  
(10, 10, 10, 'Prueba de coagulación', '2025-03-10', '/archivos/examenes/coagulacion_210_1010.pdf');  


