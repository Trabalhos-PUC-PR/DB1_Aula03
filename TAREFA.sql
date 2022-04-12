USE EMPRESA;
-- SELECIONAR TODOS OS NOMES QUE COMEÇAM COM J
SELECT Pre_nome FROM TBEmpregado WHERE Pre_nome LIKE 'J%';

-- SELECIONAR TODOS OS EMPREGADOS CUJO O SEXO É FEMININO 
SELECT * FROM TBEmpregado 
	INNER JOIN TBSexo 
    ON TBEmpregado.sexo = TBSexo.Codigo 
    WHERE TBSexo.Descricao = "Feminino";

-- SELECIONAR TODOS OS EMPREGADOS CUJO O SEXO É MASCULINO    
SELECT * FROM TBEmpregado 
	INNER JOIN TBSexo 
    ON TBEmpregado.sexo = TBSexo.Codigo 
    WHERE TBSexo.Descricao = "Masculino";    
    
-- SELECIONA TODOS OS PROJETOS DE ACORDO COM O DEPARTAMENTO QUE ESTÁ TRABALHANDO NELES
SELECT TBProjeto.Numero, TBDepartamento.Nome, TBDepartamento.Sigla
	FROM TBProjeto 
	INNER JOIN TBDepartamento
	WHERE TBProjeto.numero_depto = TBDepartamento.numero
	ORDER BY TBDepartamento.Nome;

SELECT 