INSERT INTO editora(nome_editora, pais)
VALUES 
('Editora Alfa', 'Brasil'),
('Editora Beta', 'Portugal'),
('Editora Bertrand Brasil ', 'Brasil');

INSERT INTO autor(nome_autor, data_nascimento, email)
VALUES
('Jorge Amado', '1912-08-10', 'jorginho@email.com'),
('Machado de Assis','1839-06-21', 'machadinho@email.com'),
('Matt Haig','1975-06-03','matt@email.com');

INSERT INTO assunto(descricao_assunto)
VALUES
('Ficção'),
('Suspense'),
('Romance'),
('Terror'),
('Aventura'),
('Infantil');

INSERT INTO livro(titulo, ano_publicacao, editora, autor, assunto)
VALUES
('Capitães da Areia',1937,1,1,4),
('Dom Casmurro',1899, 2, 2, 4),
('A Biblioteca da Meia Noite', 2020, 3, 3, 2),
('Memórias Póstumas de Brás Cubas', 1881,1,2,4);

UPDATE livro
SET ano_publicacao = 1938
WHERE titulo = 'Capitães da Areia';

DELETE FROM livro
WHERE id_livro = 8;

SELECT  livro.titulo AS nome,
        editora.nome_editora AS editora,
        autor.nome_autor AS autor,
        assunto.descricao_assunto AS tema,
        livro.ano_publicacao AS ano
FROM livro
JOIN editora ON livro.editora = editora.id_editora
JOIN autor ON livro.autor = autor.id_autor
JOIN assunto ON livro.assunto = assunto.id_assunto;

SELECT  livro.titulo AS titulo,
        assunto.descricao_assunto AS tema
FROM livro
JOIN assunto ON livro.assunto = assunto.id_assunto
WHERE assunto.descricao_assunto = 'Romance';
