-- 1
SHOW DATABASES;
USE academia_movimento;
 
-- 2
SHOW TABLES;
 
-- 3
DESCRIBE alunos;
 
-- 4
SELECT COUNT(*) AS total_pagamentos
FROM pagamentos;

-- 5
SELECT* 
FROM planos 
ORDER BY valor_mensal DESC;

-- 6
CREATE TABLE equipamentos(id_produto INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(30) NOT NULL,
marca VARCHAR(40) NOT NULL,
data_compra DATE,
    em_uso BOOLEAN DEFAULT TRUE,
    PRIMARY KEY (id_produto)
    );

-- 7
ALTER TABLE alunos
ADD COLUMN telefone VARCHAR(15);

-- 8
DELETE FROM equipamentos
WHERE id_produto;

-- 9
INSERT INTO alunos
(nome, email, data_matricula, data_nascimento, plano_id, ativo)
VALUES
('Mariana Rocha', 'mariana.r@email.com', 
CURDATE(), '1995-06-15', 2, TRUE);

-- 10
UPDATE instrutores
SET salario = salario * 1.08
WHERE salario < 3700;

-- 11
START TRANSACTION;
UPDATE inscrição
set status = cancelada
WHERE aluno_id = 4
AND status = 'ativa';
SELECT *
FROM inscricoes
WHERE aluno_id = 4;
commit;

-- 12
SELECT nome,email,data_matricula
FROM alunos
where ativo =  true
ORDER BY data_matricula desc;

-- 13
SELECT nome, salario 
FROM instrutores 
WHERE especialidade <> 'yoga' 
ORDER BY salario ASC;

-- 14
SELECT nome, valor_mensal
FROM planos
WHERE valor_mensal BETWEEN 100 AND 200;
 
-- 15
SELECT nome
FROM alunos
WHERE nome LIKE 'A%'
   OR nome LIKE '%Souza%';

-- 16
SELECT a.nome AS aluno,
       p.nome AS plano
FROM planos p
RIGHT JOIN alunos a 
ON a.plano_id = p.id;

 -- 17
SELECT a.nome AS aula,
       i.nome AS instrutor
FROM aulas a
INNER JOIN instrutores i 
ON a.instrutor_id = i.id
ORDER BY a.nome ASC;

-- 18
SELECT al.nome AS aluno,
       au.nome AS aula,
       i.nome AS instrutor
FROM inscricoes ins
INNER JOIN alunos al ON ins.aluno_id = al.id
INNER JOIN aulas au ON ins.aula_id = au.id
INNER JOIN instrutores i ON au.instrutor_id = i.id
WHERE ins.status = 'ativa'
ORDER BY al.nome ASC;

-- 19
SELECT p.nome AS plano,
       COUNT(a.id) AS quantidade_alunos
FROM planos p
INNER JOIN alunos a ON a.plano_id = p.id
GROUP BY p.nome;

-- 20
SELECT especialidade,
       ROUND(AVG(salario), 2) AS media_salarial
FROM instrutores
GROUP BY especialidade;

-- 21
SELECT au.nome AS aula,
       COUNT(ins.id) AS quantidade_inscricoes_ativas
FROM aulas au
INNER JOIN inscricoes ins ON ins.aula_id = au.id
WHERE ins.status = 'ativa'
GROUP BY au.nome
HAVING COUNT(ins.id) > 2;

-- 22
SELECT a.nome AS aluno
FROM alunos a
INNER JOIN planos p ON a.plano_id = p.id
WHERE p.valor_mensal > (
    SELECT AVG(valor_mensal) 
    FROM planos);

-- 23
SELECT nome AS instrutor
FROM instrutores
WHERE id NOT IN (
    SELECT DISTINCT instrutor_id 
    FROM aulas 
    WHERE instrutor_id IS NOT NULL);





   
   




















