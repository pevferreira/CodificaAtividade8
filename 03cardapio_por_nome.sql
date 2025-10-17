SELECT 
    codigo,
    nome,
    descricao,
    CONCAT('R$ ', FORMAT(preco_unitario, 2)) AS preco
FROM Cardapio
ORDER BY nome;