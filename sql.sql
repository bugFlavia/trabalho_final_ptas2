create table produtos(
id serial primary key,
titulo text not null, 
dt_cad date not null, 
preco float not null, 
descricao text not null, 
imagem text not null);

insert into produtos (titulo, dt_cad, preco, descricao, imagem) values
('La Vie Est Belle Lancôme', '2023-06-12', 465.99, 'Perfume spray Lamcomê, aroma oriental, 100 ml.', 'https://m.media-amazon.com/images/I/710fa-Et8LL._AC_UL600_FMwebp_QL65_.jpg'),
('Espuma Demaquilante Lancôme - Miel En Mousse', '2023-06-12', 221.90, 'Loção demaquilante para o rosto, 200 ml.', 'https://m.media-amazon.com/images/I/61KR8YBAHfL._AC_UL600_FMwebp_QL65_.jpg'),
('Lamcomê Rénergie Multi-Lift Ultra Cream FPS 20', '2023-06-12', 582.90, 'Rejuvenescedor Lamcomê, FPS 20, 50 ml.', 'https://m.media-amazon.com/images/I/51PBJNrCI7L._AC_UL600_FMwebp_QL65_.jpg'),
('Lancôme Monsieur Big Waterproof','2023-06-12', 168.35, 'Máscara para cílios Lamcomê, extra-volume, 10 ml.', 'https://m.media-amazon.com/images/I/61FnR0D7UHL._AC_UL600_FMwebp_QL65_.jpg'),
('L.absolu Mademoiselle Shine Lancôme','2023-06-12', 175.90, 'Batom em bala cremoso, cor 392.', 'https://m.media-amazon.com/images/I/51CPAVbgJxL._AC_UL600_FMwebp_QL65_.jpg'),
('Vichy Minéral 89', '2023-06-12', 158.99, 'Sérum Hidratante Fortalecedor Vichy, 50ml.', 'https://m.media-amazon.com/images/I/613bRe9m6BL._AC_UL600_FMwebp_QL65_.jpg'),
('Vichy Liftactiv Supreme Creme Noite', '2023-06-12', 689.98, 'Antirrugas e Refirmante, 50ml', 'https://m.media-amazon.com/images/I/51MF6ryb3QL._AC_UL600_FMwebp_QL65_.jpg'),
('Sérum Antirrugas Vichy','2023-06-12', 194.00, 'Ácido Hialuronico Vichy Liftactiv H.A. Filler', 'https://m.media-amazon.com/images/I/51WtAKrVKCL._AC_SX569_.jpg'),
('Vichy Neovadiol Rose Platinium','2023-06-12', 599.99, 'Creme rosa antienvelhecimento, 50ml.', 'https://m.media-amazon.com/images/I/71UfbUlmtqL._AC_UL600_FMwebp_QL65_.jpg'),
('Vichy Liftactiv Supreme','2023-06-12', 478.59, 'Creme Pele Seca Anti-rugas, 50ml', 'https://m.media-amazon.com/images/I/717B9KfZNVL._AC_UL600_FMwebp_QL65_.jpg'),
('Redermic Hyalu C, La Roche-Posay', '2023-06-12', 370.90, 'Ácido hialurônico La Roche Posay branco, 40ml', 'https://m.media-amazon.com/images/I/51Rml1bn7QL._AC_SX679_.jpg'),
('Rosaliac AR Intense La Roche Posay', '2023-06-12', 339.89, 'Creme gel Fluido com 40ml', 'https://m.media-amazon.com/images/I/518Ei3m61gL._AC_SX679_.jpg'),
('La Roche-Posay Pigmentclar', '2023-06-12', 257.90, 'Creme para Olheiras 15ml', 'https://m.media-amazon.com/images/I/51JdizwbKHL._AC_SX679_.jpg'),
('Creme La Rocha Posay ', '2023-06-12', 306.89, 'Creme Anti-idade Substiane Olhos, 15ml', 'https://m.media-amazon.com/images/I/61-eYukscRL._AC_SX679_.jpg'),
('La Roche-Posay Retinol B3', '2023-06-12', 194.93, 'Sérum Antirrugas, Retinol concentrado, Redução de rugas acentuadas, Vitamina B3 30ml', 'https://m.media-amazon.com/images/I/61MVCGBZJML._AC_SX679_.jpg'),
('Ivy C AOX Gel Rejuvenescedor', '2023-06-12', 179.81, 'Gel rejuvenecsedor Mantecork skinCare, 30ml.', 'https://m.media-amazon.com/images/I/41ViItwDv4L._AC_UL600_FMwebp_QL65_.jpg'),
('GLYCARE NIGHT SERUM', '2023-06-12', 175.90, 'Sérum facial noturno Mantecork skinCare, 30ml.', 'https://m.media-amazon.com/images/I/41tJNpTkGQL._AC_UL600_FMwebp_QL65_.jpg'),
('Mantecorp Skincare Clareador', '2023-06-12', 219.90, 'Sérum para os olhos clareador blancy cis de manchas, 30g.', 'https://m.media-amazon.com/images/I/41fev9sL8WL._AC_UL600_FMwebp_QL65_.jpg'),
('Gel Creme Clareador', '2023-06-12', 239.98, 'Creme redutor de manchas e clareador Mantecork skinCare, 30g.', 'https://m.media-amazon.com/images/I/416C5NaWE5L._AC_UL600_FMwebp_QL65_.jpg'),
('Reviline Creme Rejuvenescedor Lift', '2023-06-12', 199.90, 'Hidratante facial Mantecorp skinCare, 30g.', 'https://m.media-amazon.com/images/I/415mi3LQQXL._AC_UL600_FMwebp_QL65_.jpg')
