CREATE TABLE logs(
idLog INT PRIMARY KEY AUTO_INCREMENT,
fkTotem INT,
pctg_processador INT,
pctg_memoria_uso INT,
pctg_disco_uso INT,
qtd_processos INT,
qtd_servicos INT,
temp FLOAT,
data_hora DATETIME,
);
