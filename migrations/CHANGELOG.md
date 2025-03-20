# Database Changelog

## Version 1

- Initial Database Schema

## Version 2 - Implement Dynamic Questionnaires

- Add tables preguntas, cuestionarios, preguntas_cuestionarios, antecedentes, consultas_preguntas

- Drop column Pacientes -> Antecedentes, Consultas -> Evaluacion

## Version 3 - Modify Relationships

- Modified One-To-Many relationships with Diagnosticos, Tratamientos & Consultas

## Version 4 - Modify nullability

- Changed nullability restrictions on certain fields to match ERD more accurately
