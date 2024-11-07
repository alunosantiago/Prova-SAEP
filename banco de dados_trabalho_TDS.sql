
CREATE TABLE usuarios (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nome_usuario VARCHAR(100) NOT NULL,
    email_usuario VARCHAR(100) NOT NULL 
);
CREATE TABLE tarefas (
    id_tarefa INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT,
    descricao_tarefa TEXT NOT NULL,
    nome_setor VARCHAR(50) NOT NULL,
    prioridade ENUM('Baixa', 'Média', 'Alta') NOT NULL,
    data_cadastro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    status ENUM('A fazer', 'Fazendo', 'Pronto') DEFAULT 'A fazer',
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario)
);
