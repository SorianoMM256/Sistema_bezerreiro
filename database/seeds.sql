USE gestao_bezerras;

-- CASINHAS (8 x 10)
INSERT INTO CASINHA (casinha_id, linha, coluna, status_visual)
VALUES
-- Linha 1
(1,1,1,'BRANCO'), (2,1,2,'BRANCO'), (3,1,3,'BRANCO'), (4,1,4,'BRANCO'),
(5,1,5,'BRANCO'), (6,1,6,'BRANCO'), (7,1,7,'BRANCO'), (8,1,8,'BRANCO'),
(9,1,9,'BRANCO'), (10,1,10,'BRANCO'),

-- Linha 2
(11,2,1,'BRANCO'), (12,2,2,'BRANCO'), (13,2,3,'BRANCO'), (14,2,4,'BRANCO'),
(15,2,5,'BRANCO'), (16,2,6,'BRANCO'), (17,2,7,'BRANCO'), (18,2,8,'BRANCO'),
(19,2,9,'BRANCO'), (20,2,10,'BRANCO'),

-- Linha 3
(21,3,1,'BRANCO'), (22,3,2,'BRANCO'), (23,3,3,'BRANCO'), (24,3,4,'BRANCO'),
(25,3,5,'BRANCO'), (26,3,6,'BRANCO'), (27,3,7,'BRANCO'), (28,3,8,'BRANCO'),
(29,3,9,'BRANCO'), (30,3,10,'BRANCO'),

-- Linha 4
(31,4,1,'BRANCO'), (32,4,2,'BRANCO'), (33,4,3,'BRANCO'), (34,4,4,'BRANCO'),
(35,4,5,'BRANCO'), (36,4,6,'BRANCO'), (37,4,7,'BRANCO'), (38,4,8,'BRANCO'),
(39,4,9,'BRANCO'), (40,4,10,'BRANCO'),

-- Linha 5
(41,5,1,'BRANCO'), (42,5,2,'BRANCO'), (43,5,3,'BRANCO'), (44,5,4,'BRANCO'),
(45,5,5,'BRANCO'), (46,5,6,'BRANCO'), (47,5,7,'BRANCO'), (48,5,8,'BRANCO'),
(49,5,9,'BRANCO'), (50,5,10,'BRANCO'),

-- Linha 6
(51,6,1,'BRANCO'), (52,6,2,'BRANCO'), (53,6,3,'BRANCO'), (54,6,4,'BRANCO'),
(55,6,5,'BRANCO'), (56,6,6,'BRANCO'), (57,6,7,'BRANCO'), (58,6,8,'BRANCO'),
(59,6,9,'BRANCO'), (60,6,10,'BRANCO'),

-- Linha 7
(61,7,1,'BRANCO'), (62,7,2,'BRANCO'), (63,7,3,'BRANCO'), (64,7,4,'BRANCO'),
(65,7,5,'BRANCO'), (66,7,6,'BRANCO'), (67,7,7,'BRANCO'), (68,7,8,'BRANCO'),
(69,7,9,'BRANCO'), (70,7,10,'BRANCO'),

-- Linha 8
(71,8,1,'BRANCO'), (72,8,2,'BRANCO'), (73,8,3,'BRANCO'), (74,8,4,'BRANCO'),
(75,8,5,'BRANCO'), (76,8,6,'BRANCO'), (77,8,7,'BRANCO'), (78,8,8,'BRANCO'),
(79,8,9,'BRANCO'), (80,8,10,'BRANCO');

-- USUÁRIOS INICIAIS

INSERT INTO USUARIO (nome, senha, tipo)
VALUES
('Administrador', 'admin123', 'ADMIN'),
('Operador', 'operador123', 'OPERADOR');

-- MEDICAMENTOS PADRÃO

INSERT INTO MEDICAMENTO (nome, intervalo_dias, descricao_regra_dosagem)
VALUES
('Iodo Umbigo', 7, 'Aplicação diária nos primeiros dias'),
('Antibiótico A', 15, 'Dosagem varia conforme idade');
