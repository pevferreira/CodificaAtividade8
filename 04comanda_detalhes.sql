SELECT 
    c.codigo AS codigo_comanda,
    DATE_FORMAT(c.data, '%d/%m/%Y') AS data,
    c.mesa,
    c.nome_cliente,
    card.nome AS nome_cafe,
    card.descricao,
    ic.quantidade,
    CONCAT('R$ ', FORMAT(card.preco_unitario, 2)) AS preco_unitario,
    CONCAT('R$ ', FORMAT(ic.quantidade * card.preco_unitario, 2)) AS preco_total
FROM Comanda c
INNER JOIN ItemComanda ic ON c.codigo = ic.codigo_comanda
INNER JOIN Cardapio card ON ic.codigo_cardapio = card.codigo
ORDER BY c.data, c.codigo, card.nome;