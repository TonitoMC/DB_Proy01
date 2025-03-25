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

## Version 5 - Restrictions

- Added Default values & unique restrictions for relevant tables

## Version 6 - Logs & tutor contact

- Add tables for users, permissions & logs
- Add table for contact information of parent / legal tutor, for underage patients

## Version 7 - Improved restrictions

- Update preguntas_consultas table
- Add unique & data size constraints (Only 2 fields for bilateral measurements)
