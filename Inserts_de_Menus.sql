--
--          Observações iniciais:
--      ATENÇÃO Antes de alterar qualquer coisa neste script INTERPRETAR bem e REVISAR adequadamente para evitar ERROS e INCONSISTÊNCIAS
--      Ao colar novos inserts neste arquivo manter em ORDEM CRESCENTE por CODCONTROLE
--
--          Participantes:
--      Lucas Gehlen  
--      Gregori Schuster
--      Marcelo Lupatini
--      Vinicius Meng


--      Central de Marcação

INSERT INTO WEB_CONTROLE (CODCONTROLE, CODCONTROLEPAI, LABEL, CONTROLE, VISIVEL, INDICE, ICONE)
VALUES (52, 0, 'Central de Marcação', '#', 'S', null, 'calendar');

-- Cadastro

INSERT INTO WEB_CONTROLE (CODCONTROLE, CODCONTROLEPAI, LABEL, CONTROLE, VISIVEL, INDICE, ICONE)
VALUES (53, 52, 'Cadastro', '#', 'S', null, '');


INSERT INTO WEB_CONTROLE (CODCONTROLE, CODCONTROLEPAI, LABEL, CONTROLE, VISIVEL, INDICE, ICONE)
VALUES (54, 53, 'Recurso', '/Cm_Recurso', 'S', null, '');

INSERT INTO WEB_CONTROLE (CODCONTROLE, CODCONTROLEPAI, LABEL, CONTROLE, VISIVEL, INDICE, ICONE)
VALUES (58, 53, 'Cidade', '/Cidade', 'S', null, '');

INSERT INTO WEB_CONTROLE (CODCONTROLE, CODCONTROLEPAI, LABEL, CONTROLE, VISIVEL, INDICE, ICONE)
VALUES (59, 53, 'Escala', '/Cm_Escala', 'S', null, '');

INSERT INTO WEB_CONTROLE (CODCONTROLE, CODCONTROLEPAI, LABEL, CONTROLE, VISIVEL, INDICE, ICONE)
VALUES (60, 53, 'Equipamento', '/Cm_Equipamento', 'S', null, '');

INSERT INTO WEB_CONTROLE (CODCONTROLE, CODCONTROLEPAI, LABEL, CONTROLE, VISIVEL, INDICE, ICONE)
VALUES (61, 53, 'Lembretes', '/Cm_Lembretes', 'S', null, '');

INSERT INTO WEB_CONTROLE (CODCONTROLE, CODCONTROLEPAI, LABEL, CONTROLE, VISIVEL, INDICE, ICONE)
VALUES (62, 53, 'Feriados', '/Cm_Feriados', 'S', null, '');

INSERT INTO WEB_CONTROLE (CODCONTROLE, CODCONTROLEPAI, LABEL, CONTROLE, VISIVEL)
VALUES (63, 53, 'Apelido/Realizante', '/Cm_ApelRea', 'S');

--acrescentando campos na table cm_lembretes
alter table cm_lembretes
add diasemana number(1) default 8
add datavigencia date

-- Relatórios

INSERT INTO WEB_CONTROLE (CODCONTROLE, CODCONTROLEPAI, LABEL, CONTROLE, VISIVEL, INDICE, ICONE)
VALUES (64, 52, 'Relatórios', '#', 'S', null, '');


INSERT INTO WEB_CONTROLE (CODCONTROLE, CODCONTROLEPAI, LABEL, CONTROLE, VISIVEL, INDICE, ICONE)
VALUES (65, 64, 'Pacientes Agendados', '/RelPacAgendByUser', 'S', null, '');

INSERT INTO WEB_CONTROLE (CODCONTROLE, CODCONTROLEPAI, LABEL, CONTROLE, VISIVEL)
VALUES (66, 64, 'Exames por Recurso', '/RelExameRecurso', 'S');

INSERT INTO WEB_CONTROLE (CODCONTROLE, CODCONTROLEPAI, LABEL, CONTROLE, VISIVEL)
VALUES (67, 64, 'Exames por Realizante', '/RelExameRealizante', 'S');

INSERT INTO WEB_CONTROLE (CODCONTROLE, CODCONTROLEPAI, LABEL, CONTROLE, VISIVEL)
VALUES (68, 64, 'Convênios por Recurso', '/RelConvenioRecurso', 'S');

--Relatórios Controle 

INSERT INTO web_controle (CODCONTROLE, CODCONTROLEPAI, LABEL, CONTROLE, VISIVEL, INDICE, ICONE)
values (69, 17, 'Relatórios', '#', 'S', null, '');

INSERT INTO web_controle (CODCONTROLE, CODCONTROLEPAI, LABEL, CONTROLE, VISIVEL, INDICE, ICONE)
values (70, 69, 'Laudos Corrigidos', '/RelStatusCorrigido', 'S', null, '');

INSERT INTO WEB_CONTROLE (CODCONTROLE, CODCONTROLEPAI, LABEL, CONTROLE, VISIVEL)
VALUES (71, 64, ' Horários Livres', '/RelHorLivres', 'S');

INSERT INTO WEB_CONTROLE (CODCONTROLE, CODCONTROLEPAI, LABEL, CONTROLE, VISIVEL)
VALUES (72, 64, 'Produção', '/RelProducao', 'S');

-- Gerar

INSERT INTO WEB_CONTROLE (CODCONTROLE, CODCONTROLEPAI, LABEL, CONTROLE, VISIVEL)
VALUES (73, 52, 'Gerar' , '#', 'S');


INSERT INTO WEB_CONTROLE (CODCONTROLE, CODCONTROLEPAI, LABEL, CONTROLE, VISIVEL)
VALUES (74, 73, 'Gerar Horários', '/GerHor', 'S');

INSERT INTO WEB_CONTROLE (CODCONTROLE, CODCONTROLEPAI, LABEL, CONTROLE, VISIVEL)
VALUES (75, 73, 'Gerar Bloqueios', '/GerBloq', 'S');

INSERT INTO WEB_CONTROLE (CODCONTROLE, CODCONTROLEPAI, LABEL, CONTROLE, VISIVEL)
VALUES (76, 73, 'Excluir Bloqueio Automático', '/GerBloqAut', 'S');

-- 77 usado pelo Lucas

--      Recepção

INSERT INTO WEB_CONTROLE (CODCONTROLE, CODCONTROLEPAI, LABEL, CONTROLE, VISIVEL, icone)
VALUES (78, 0, 'Recepção', '#', 'S', 'id-card');

-- Cadastro

INSERT INTO WEB_CONTROLE (CODCONTROLE, CODCONTROLEPAI, LABEL, CONTROLE, VISIVEL)
VALUES (79, 78, 'Cadastros', '#', 'S');


--INSERT INTO WEB_CONTROLE (CODCONTROLE, CODCONTROLEPAI, LABEL, CONTROLE, VISIVEL)       -- Não pronta
--VALUES (80, 79, 'Preparo de Exames', '/Preparo', 'S');

INSERT INTO WEB_CONTROLE (CODCONTROLE, CODCONTROLEPAI, LABEL, CONTROLE, VISIVEL)
VALUES (81, 79, 'Tempo de Entrega', '/TempoEntrega', 'S');

INSERT INTO WEB_CONTROLE (CODCONTROLE, CODCONTROLEPAI, LABEL, CONTROLE, VISIVEL)
VALUES (82, 79, 'Feriado de Entrega', '/FeriadoEntrega', 'S');

--       Central de Marcação - Cadastro

INSERT INTO WEB_CONTROLE (CODCONTROLE, CODCONTROLEPAI, LABEL, CONTROLE, VISIVEL)
VALUES (83, 53, 'Relação Real./Exame', '/Cm_RealizanteExame', 'S');

INSERT INTO WEB_CONTROLE (CODCONTROLE, CODCONTROLEPAI, LABEL, CONTROLE, VISIVEL)
VALUES (84, 53, 'Relação Rec./Exame', '/Cm_RecursoExame', 'S');

INSERT INTO WEB_CONTROLE (CODCONTROLE, CODCONTROLEPAI, LABEL, CONTROLE, VISIVEL)
VALUES (85, 53, 'Relação Rec./Conv.', '/Cm_RecursoConvenio', 'S');

-- Controle -> Relatorio de Entregas

INSERT INTO WEB_CONTROLE (CODCONTROLE, CODCONTROLEPAI, LABEL, CONTROLE, VISIVEL, INDICE, ICONE)
values (86, 69, 'Entregas Realizadas', '/RelEntrega', 'S', null, '');

--      Faturamento

INSERT INTO WEB_CONTROLE (CODCONTROLE, CODCONTROLEPAI, LABEL, CONTROLE, VISIVEL, icone)
VALUES (87, 0, 'Faturamento', '#', 'S', 'bar-chart');

-- Cadastro

INSERT INTO WEB_CONTROLE (CODCONTROLE, CODCONTROLEPAI, LABEL, CONTROLE, VISIVEL)
VALUES (88, 87, 'Cadastro', '#', 'S');

INSERT INTO WEB_CONTROLE (CODCONTROLE, CODCONTROLEPAI, LABEL, CONTROLE, VISIVEL)
VALUES (89, 88, 'Grupo de Faturamento', '/GrpFat', 'S');


INSERT INTO WEB_CONTROLE (CODCONTROLE, CODCONTROLEPAI, LABEL, CONTROLE, VISIVEL)
VALUES (90, 87, 'Módulo de Fatura - I.P.E.', '/FatModIpe', 'S');

INSERT INTO WEB_CONTROLE (CODCONTROLE, CODCONTROLEPAI, LABEL, CONTROLE, VISIVEL)
VALUES (91, 88, '', '', 'S');

-- Controle -> Relatorio de Laudos PADI 1%
INSERT INTO web_controle (CODCONTROLE, CODCONTROLEPAI, LABEL, CONTROLE, VISIVEL, INDICE, ICONE)
values (92, 69, 'Laudos PADI', '/RelPADI', 'S', null, '');

-- faturamento -> cadastros -> especialidade dos exames
INSERT INTO web_controle(codcontrole, codcontrolepai, label, controle, visivel)
values (93, 87, 'Especialidade dos Exames', '/GrpExame', 'S');

-- faturamento -> TISS
INSERT INTO web_controle(codcontrole, codcontrolepai, label, controle, visivel)
values (94, 87, 'TISS', '#', 'S');

-- faturamento -> TISS -> Versão do Tiss
INSERT INTO web_controle(codcontrole, codcontrolepai, label, controle, visivel)
values (95, 94, 'Versão do Tiss', '/TissVersao', 'S');

-- faturamento -> TISS -> Tipo de logradouro
INSERT INTO web_controle(codcontrole, codcontrolepai, label, controle, visivel)
values (96, 94, 'Tipo de logradouro', '/TipoLogradouro', 'S');

-- Fluxos -> De Controle de Laudos
INSERT INTO web_controle (CODCONTROLE, CODCONTROLEPAI, LABEL, CONTROLE, VISIVEL, INDICE, ICONE)
values (97, 2, 'De Controle de Laudos', '/FluxoControleLaudo', 'S', null, 'list');

-- Laudos Atrasados -> Relatório 
INSERT INTO web_controle (CODCONTROLE, CODCONTROLEPAI, LABEL, CONTROLE, VISIVEL, INDICE, ICONE)
values (98, 69, 'Laudos Atrasados', '/RelLaudoAtrasado', 'S', null, '');

--Faturamento -> Tiss -> Convênios
INSERT INTO web_controle (CODCONTROLE, CODCONTROLEPAI, LABEL, CONTROLE, VISIVEL, INDICE, ICONE)
values (99, 94, 'Convênios', '/ConvenioTISS', 'S', null, '');

--Área de Exams -> Gastos de Sala
insert into web_controle (CODCONTROLE, CODCONTROLEPAI, LABEL, CONTROLE, VISIVEL, INDICE, ICONE)
values (101, 6, 'Gastos de Sala', '/GastosDeSala', 'S', null, '');

--Faturamento -> Fatura CSV
insert into web_controle (CODCONTROLE, CODCONTROLEPAI, LABEL, CONTROLE, VISIVEL, INDICE, ICONE)
values (102, 93, 'Fatura CSV', '/FaturaCSV', 'S', null, '');

