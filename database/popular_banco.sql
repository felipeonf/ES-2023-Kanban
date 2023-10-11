
INSERT INTO `kanban`.`Conta` (`email`, `nome`, `senha`) VALUES
  ('alice@example.com', 'Alice Silva', 'Senha1@Alice'),
  ('roberto@example.com', 'Roberto Santos', 'Senha2@Roberto'),
  ('carla@example.com', 'Carla Ferreira', 'Senha3@Carla'),
  ('david@example.com', 'David Lima', 'Senha4@David'),
  ('elisa@example.com', 'Elisa Rodrigues', 'Senha5@Elisa');


INSERT INTO `kanban`.`Quadro` (`codigo`, `nome`, `descricao`, `limite_cartoes`, `Conta_email`) VALUES
  ('QK01', 'Projeto de Desenvolvimento', 'Projeto de desenvolvimento do produto X', 10, 'alice@example.com'),
  ('QK02', 'Tarefas de Marketing', 'Campanha de marketing para o lançamento', 5, 'roberto@example.com'),
  ('QK03', 'Projeto de Marketing', 'Elaborar campanha de email marketing', 8, 'carla@example.com'),
  ('QK04', 'Tarefas de Desenvolvimento', 'Desenvolvimento de novos recursos', 6, 'david@example.com'),
  ('QK05', 'Projeto de Vendas', 'Estratégia de vendas para o trimestre', 7, 'elisa@example.com'),
  ('QK06', 'Projeto de Finanças', 'Gerenciamento financeiro da empresa', 12, 'carla@example.com'),
  ('QK07', 'Tarefas de Design', 'Design de interfaces e experiência do usuário', 5, 'david@example.com'),
  ('QK08', 'Projeto de Logística', 'Otimização da cadeia de suprimentos', 8, 'elisa@example.com');

INSERT INTO `kanban`.`Cartao` (`codigo`, `nome`, `descricao`, `coluna`, `Quadro_codigo`, `Quadro_Conta_email`) VALUES
  ('CK01', 'Análise de Mercado', 'Pesquisa de mercado e concorrência', 'SOLICITADO', 'QK01', 'alice@example.com'),
  ('CK02', 'Desenvolvimento de Recursos', 'Implementar recursos essenciais', 'SOLICITADO', 'QK01', 'alice@example.com'),
  ('CK03', 'Testes de Qualidade', 'Testar e garantir qualidade', 'EM EXECUCAO', 'QK01', 'alice@example.com'),
  ('CK04', 'Revisão do Produto', 'Aprovar o produto final', 'CONCLUIDO', 'QK01', 'alice@example.com'),
  ('CK05', 'Publicidade Online', 'Campanha de anúncios online', 'SOLICITADO', 'QK02', 'roberto@example.com'),
  ('CK06', 'Marketing de Conteúdo', 'Produção de conteúdo para blog', 'EM EXECUCAO', 'QK02', 'roberto@example.com'),
  ('CK07', 'Campanha de Email', 'Elaborar campanha de email marketing', 'SOLICITADO', 'QK03', 'carla@example.com'),
  ('CK08', 'Implementação de Recursos', 'Implementar recursos de software', 'SOLICITADO', 'QK04', 'david@example.com'),
  ('CK09', 'Treinamento de Vendas', 'Preparar treinamento de vendas', 'EM EXECUCAO', 'QK05', 'elisa@example.com'),
  ('CK10', 'Orçamento Anual', 'Preparar o orçamento para o próximo ano', 'SOLICITADO', 'QK06', 'carla@example.com'),
  ('CK11', 'Design de Produto', 'Criar mockups e protótipos de produtos', 'SOLICITADO', 'QK07', 'david@example.com'),
  ('CK12', 'Otimização de Rotas', 'Melhorar a eficiência das rotas de entrega', 'EM EXECUCAO', 'QK08', 'elisa@example.com');
