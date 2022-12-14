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


-- COMMAND ----------

SELECT *
FROM silver_olist.pedido
WHERE descSituacao IN 'shipped', 'canceled'
AND YEAR(dtPedido) = '2018'

-- leia-se: selecione todas as colunas da tabela silver_olist.pedido filtrando pedidos que tenham situação é entregue ou cancelado e o ano da data do pedido seja 2018.
