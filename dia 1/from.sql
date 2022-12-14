-- Databricks notebook source
SELECT * FROM silver_olist.pedido

-- leia-se: selecione TUDO da tabela silver_olist.pedido

-- COMMAND ----------

SELECT iDPedido
FROM silver_olist.pedido

-- leia-se: selecione a coluna iDPedido da tabela silver_olist.pedido

-- COMMAND ----------

SELECT
  iDPedido,
  descSituacao
FROM
  silver_olist.pedido
LIMIT
  5 -- sem ordem prédefinida, nao tá pra saber se são os
  -- leia-se: selecione as colunas iDPedido e descSituacao da tabela silver_olist.pedido
  -- CTRL + SHIFT + F: pressione pra formatar a query

-- COMMAND ----------

SELECT *,
       DATEDIFF(dtEstimativaEntrega, dtEntregue) AS qtDiasPromessaEntrega

FROM silver_olist.pedido

-- o alias AS é opcional mas em termos de leitura e interpretação do código fica difícil. É melhor deixar visual, de forma explícita;
