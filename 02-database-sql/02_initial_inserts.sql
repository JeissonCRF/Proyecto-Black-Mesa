-- Necesitaba que los primeros departamentos heredaran la estructura militar inicial pero enfocado al crecimiento de Black Mesa --

INSERT INTO Departments (department_id, department_name, security_clearance_required, status) VALUES
('EXEC-01', 'Central Administration & Budgeting', 5, 'active'),
('MIL-ICBM', 'Strategic Missile Silo & Ordnance', 4, 'active'),
('LAB-PHYS', 'Theoretical & Radiation Physics Lab', 3, 'active'),
('LOG-SUPP', 'Supply Chain & Base Logistics', 2, 'active');

-- Estas cuentas serán indispensables para referenciar los movimientos --

INSERT INTO Chart_of_Accounts (account_id, account_name, account_type, class_pgn) VALUES
(1101, 'Federal Treasury Grants (Inversion Publica)', 'Revenue', 'Inversion'),
(1102, 'Black Mesa Central Treasury Account (Banco)', 'Asset', NULL),
(1501, 'Military Equipment & Rocketry Prototypes', 'Asset', 'Inversion'),
(1502, 'Advanced Computing & Telemetry Systems', 'Asset', 'Inversion'),
(1503, 'Strategic Materials & Raw Minerals Storage', 'Asset', 'Inversion'),
(5101, 'Payroll Expenses (Funcionamiento)', 'Expense', 'Funcionamiento');

-- Se asignan los primeros empleados, la idea es que la operatividad  --

INSERT INTO Employees (employee_id, first_name, last_name, role, salary_annual, hire_date, department_id, status) VALUES
('EMP-195001', 'Arthur', 'Arkwright', 'Director of Research', 12500.00, '1950-01-01', 'EXEC-01', 'active'),
('EMP-195002', 'Richard', 'Keller', 'Senior Physicist', 9800.00, '1950-01-01', 'LAB-PHYS', 'active'),
('EMP-195003', 'Colonel John', 'Marston', 'Military Commander', 11000.00, '1950-01-01', 'MIL-ICBM', 'active'),
('EMP-195004', 'William', 'Logistics', 'Quartermaster', 6500.00, '1950-01-01', 'LOG-SUPP', 'active');

-- Aquí Black Mesa adquiere recursos previos de la base militar --

INSERT INTO Accounting_Ledger (entry_date, account_id, department_id, debit, credit, description, reference_id) VALUES
('1950-01-01', 1101, 'EXEC-01', 0.00, 1500000.00, 'Initial Federal Cold War funding allotment for facility takeover', 'GOV-1950-001'),
('1950-01-01', 1102, 'EXEC-01', 1500000.00, 0.00, 'Receipt of Federal Funds into Black Mesa Central Treasury', 'GOV-1950-001'),
('1950-01-01', 1501, 'MIL-ICBM', 450000.00, 0.00, 'Acquisition of legacy ICBM structures and rocketry prototypes', 'ASST-1950-001'),
('1950-01-01', 1102, 'MIL-ICBM', 0.00, 450000.00, 'Payment for rocketry and military prototypes infrastructure', 'ASST-1950-001'),
('1950-01-01', 1502, 'EXEC-01', 250000.00, 0.00, 'Purchase of advanced vacuum-tube calculating machines', 'ASST-1950-002'),
('1950-01-01', 1102, 'EXEC-01', 0.00, 250000.00, 'Payment for early mainframe computing assets', 'ASST-1950-002'),
('1950-01-01', 1503, 'LAB-PHYS', 150000.00, 0.00, 'Procurement of pure mineral ores and heavy elements sample storage', 'ASST-1950-003'),
('1950-01-01', 1102, 'LAB-PHYS', 0.00, 150000.00, 'Payment for strategic raw minerals stockpile', 'ASST-1950-003');
