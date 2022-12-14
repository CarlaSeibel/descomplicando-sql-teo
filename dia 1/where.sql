-- Databricks notebook source
SELECT *
FROM silver_olist.pedido
WHERE descSituacao = 'shipped'
AND YEAR(dtPedido) = '2018'

-- leia-se: selecione todas as colunas da tabela silver_olist.pedido onde a situação do pedido seja entregue ou "delivered"
-- sempre busque usar aspas simples pra comparar coisas

-- COMMAND ----------

SELECT *
FROM silver_olist.pedido
WHERE descSituacao = 'shipped' OR descSituacao = 'canceled'
AND YEAR(dtPedido) = '2018'

-- leia-se: selecione todas as colunas da tabela silver_olist.pedido filtrando pedidos que tenham situação é entregue ou cancelado e o ano da data do pedido seja 2018.

-- COMMAND ----------

SELECT ((1+10)*2)

-- nota: pra garantir que 


-- COMMAND ----------

SELECT * 
FROM silver_olist.pedido
LIMIT 10

-- COMMAND ----------

SELECT *,
       DATEDIFF(dtEstimativaEntrega, dtAprovado) AS dtDiffEstimativaAprovacao
FROM silver_olist.pedido
WHERE descSituacao IN ('shipped', 'canceled')
AND YEAR(dtPedido) = '2018'
AND DATEDIFF(dtEstimativaEntrega, dtAprovado) > 30

-- leia-se: selecione todas as colunas da tabela silver_olist.pedido filtrando pedidos que tenham situação é entregue ou cancelado e o ano da data do pedido seja 2018 e a diferença entre aprovação do pedido e estimativa de entrega é maior que 30 dias.
