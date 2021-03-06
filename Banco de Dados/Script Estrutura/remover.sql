ALTER TABLE [dbo].[tblUsuarioUsuarioGrupo] DROP CONSTRAINT [FK_tblUsuarioUsuarioGrupo_tblUsuarioGrupo]
GO
ALTER TABLE [dbo].[tblUsuarioUsuarioGrupo] DROP CONSTRAINT [FK_tblUsuarioUsuarioGrupo_tblUsuario]
GO
ALTER TABLE [dbo].[tblUsuarioSistema] DROP CONSTRAINT [FK_tblUsuarioSistema_tblUsuario]
GO
ALTER TABLE [dbo].[tblUsuarioSistema] DROP CONSTRAINT [FK_tblUsuarioSistema_tblSistema]
GO
ALTER TABLE [dbo].[tblUsuarioGrupo] DROP CONSTRAINT [FK_tblUsuarioGrupo_tblUsuarioGrupo]
GO
ALTER TABLE [dbo].[tblUsuarioGrupo] DROP CONSTRAINT [FK_tblUsuarioGrupo_tblSite]
GO
ALTER TABLE [dbo].[tblUsuarioFuncionalidade] DROP CONSTRAINT [FK_tblUsuarioFuncionalidade_tblUsuario]
GO
ALTER TABLE [dbo].[tblUsuarioFuncionalidade] DROP CONSTRAINT [FK_tblUsuarioFuncionalidade_tblSistema]
GO
ALTER TABLE [dbo].[tblUsuario] DROP CONSTRAINT [FK_tblUsuario_tblSite]
GO
ALTER TABLE [dbo].[tblSiteChave] DROP CONSTRAINT [FK_tblSiteChave_tblSite]
GO
ALTER TABLE [dbo].[tblRegraPassoCondicao] DROP CONSTRAINT [FK_tblRegraPassoCondicao_tblUsuarioGrupo]
GO
ALTER TABLE [dbo].[tblRegraPassoCondicao] DROP CONSTRAINT [Fk_tblRegraPassoCondicao_tblUsuario]
GO
ALTER TABLE [dbo].[tblRegraPassoCondicao] DROP CONSTRAINT [FK_tblRegraPassoCondicao_tblRegraPasso]
GO
ALTER TABLE [dbo].[tblRegraPasso] DROP CONSTRAINT [FK_tblRegraPasso_tblRegra]
GO
ALTER TABLE [dbo].[tblRegra] DROP CONSTRAINT [FK_tblRegra_tblSite]
GO
ALTER TABLE [dbo].[tblRegra] DROP CONSTRAINT [FK_tblRegra_tblRegraTipo]
GO
ALTER TABLE [dbo].[tblPublicacaoTipoRegra] DROP CONSTRAINT [FK_tblPublicacaoTipoRegra_tblRegra]
GO
ALTER TABLE [dbo].[tblPublicacaoTipoRegra] DROP CONSTRAINT [FK_tblPublicacaoTipoRegra_tblPublicacaoTipo]
GO
ALTER TABLE [dbo].[tblPublicacaoRestricaoUsuarioGrupo] DROP CONSTRAINT [FK_tblPublicacaoRestricaoUsuarioGrupo_tblUsuarioGrupo]
GO
ALTER TABLE [dbo].[tblPublicacaoRestricaoUsuarioGrupo] DROP CONSTRAINT [FK_tblPublicacaoRestricaoUsuarioGrupo_tblPublicacao]
GO
ALTER TABLE [dbo].[tblPublicacaoRestricaoUsuario] DROP CONSTRAINT [FK_tblPublicacaoRestricaoUsuario_tblUsuario]
GO
ALTER TABLE [dbo].[tblPublicacaoRestricaoUsuario] DROP CONSTRAINT [FK_tblPublicacaoRestricaoUsuario_tblPublicacao]
GO
ALTER TABLE [dbo].[tblPublicacaoRestricao] DROP CONSTRAINT [FK_tblPublicacaoRestricao_tblPublicacao]
GO
ALTER TABLE [dbo].[tblPublicacaoIdiomaExcecao] DROP CONSTRAINT [FK_tblPublicacaoIdiomaExcecao_tblPublicacao]
GO
ALTER TABLE [dbo].[tblPublicacaoIdiomaExcecao] DROP CONSTRAINT [FK_tblPublicacaoIdiomaExcecao_tblIdioma]
GO
ALTER TABLE [dbo].[tblPublicacaoIdiomaExcecao] DROP CONSTRAINT [FK_tblPublicacaoIdiomaExcecao_tblArquivo]
GO
ALTER TABLE [dbo].[tblPublicacaoArquivo] DROP CONSTRAINT [FK_tblPublicacaoArquivo_Publicacao]
GO
ALTER TABLE [dbo].[tblPublicacaoArquivo] DROP CONSTRAINT [FK_tblPublicacaoArquivo_Arquivo]
GO
ALTER TABLE [dbo].[tblPublicacaoAprovacaoItem] DROP CONSTRAINT [FK_tblPublicacaoAprovacao_tblUsuario]
GO
ALTER TABLE [dbo].[tblPublicacaoAprovacaoItem] DROP CONSTRAINT [FK_tblPublicacaoAprovacao_tblBanner]
GO
ALTER TABLE [dbo].[tblPublicacaoAprovacaoHistorico] DROP CONSTRAINT [FK_tblPublicacaoAprovacaoHistorico_tblUsuario]
GO
ALTER TABLE [dbo].[tblPublicacaoAprovacaoHistorico] DROP CONSTRAINT [FK_tblPublicacaoAprovacaoHistorico_tblPublicacao]
GO
ALTER TABLE [dbo].[tblPublicacao] DROP CONSTRAINT [FK_tblPublicidade_tblEditoria]
GO
ALTER TABLE [dbo].[tblPublicacao] DROP CONSTRAINT [FK_tblPublicacao_tblSite]
GO
ALTER TABLE [dbo].[tblPublicacao] DROP CONSTRAINT [FK_tblPublicacao_tblPublicacaoTipo]
GO
ALTER TABLE [dbo].[tblPasta] DROP CONSTRAINT [FK_tblPasta_tblSite]
GO
ALTER TABLE [dbo].[tblPasta] DROP CONSTRAINT [FK_tblPasta_tblPasta]
GO
ALTER TABLE [dbo].[tblMenuRestricaoUsuarioGrupo] DROP CONSTRAINT [FK_tblMenuRestricaoUsuarioGrupo_tblUsuarioGrupo]
GO
ALTER TABLE [dbo].[tblMenuRestricaoUsuarioGrupo] DROP CONSTRAINT [FK_tblMenuRestricaoUsuarioGrupo_tblMenu]
GO
ALTER TABLE [dbo].[tblMenuRestricaoUsuario] DROP CONSTRAINT [FK_tblMenuRestricaoUsuario_tblUsuario]
GO
ALTER TABLE [dbo].[tblMenuRestricaoUsuario] DROP CONSTRAINT [FK_tblMenuRestricaoUsuario_tblMenu]
GO
ALTER TABLE [dbo].[tblMenuIdiomaExcecao] DROP CONSTRAINT [FK_tblMenuIdiomaExcecao_tblMenu]
GO
ALTER TABLE [dbo].[tblMenuIdiomaExcecao] DROP CONSTRAINT [FK_tblMenuIdiomaExcecao_tblIdioma]
GO
ALTER TABLE [dbo].[tblMenu] DROP CONSTRAINT [FK_tblMenu_tblTarget]
GO
ALTER TABLE [dbo].[tblMenu] DROP CONSTRAINT [FK_tblMenu_tblPublicacao]
GO
ALTER TABLE [dbo].[tblMenu] DROP CONSTRAINT [FK_tblMenu_tblMenuTipoAcao]
GO
ALTER TABLE [dbo].[tblMenu] DROP CONSTRAINT [FK_tblMenu_tblMenuTipo]
GO
ALTER TABLE [dbo].[tblMenu] DROP CONSTRAINT [FK_tblMenu_tblMenu]
GO
ALTER TABLE [dbo].[tblMailing] DROP CONSTRAINT [FK_tblMailing_tblSite]
GO
ALTER TABLE [dbo].[tblFuncionalidadeGrupo] DROP CONSTRAINT [FK_tblFuncionalidadeGrupo_tblSistema]
GO
ALTER TABLE [dbo].[tblFuncionalidade] DROP CONSTRAINT [FK_tblFuncionalidade_tblFuncionalidadeGrupo]
GO
ALTER TABLE [dbo].[tblEditoriaIdiomaExcecao] DROP CONSTRAINT [FK_tblEditoriaIdiomaExcecao_tblIdioma]
GO
ALTER TABLE [dbo].[tblEditoriaIdiomaExcecao] DROP CONSTRAINT [FK_tblEditoriaIdiomaExcecao_tblEditoria]
GO
ALTER TABLE [dbo].[tblEditoria] DROP CONSTRAINT [FK_tblEditoria_tblSite]
GO
ALTER TABLE [dbo].[tblConfiguracao] DROP CONSTRAINT [FK_tblConfiguracao_tblSite]
GO
ALTER TABLE [dbo].[tblCalculadoraItem] DROP CONSTRAINT [FK_tblCalculadoraItem_tblCalculadora]
GO
ALTER TABLE [dbo].[tblBannerRestricaoUsuarioGrupo] DROP CONSTRAINT [FK_tblBannerRestricaoUsuarioGrupo_tblUsuarioGrupo]
GO
ALTER TABLE [dbo].[tblBannerRestricaoUsuarioGrupo] DROP CONSTRAINT [FK_tblBannerRestricaoUsuarioGrupo_tblBanner]
GO
ALTER TABLE [dbo].[tblBannerRestricaoUsuario] DROP CONSTRAINT [FK_tblBannerRestricaoUsuario_tblUsuarioGrupo]
GO
ALTER TABLE [dbo].[tblBannerRestricaoUsuario] DROP CONSTRAINT [FK_tblBannerRestricaoUsuario_tblBanner]
GO
ALTER TABLE [dbo].[tblBannerIdiomaExcecao] DROP CONSTRAINT [FK_tblBannerIdiomaExcecao_tblIdioma]
GO
ALTER TABLE [dbo].[tblBannerIdiomaExcecao] DROP CONSTRAINT [FK_tblBannerIdiomaExcecao_tblBanner]
GO
ALTER TABLE [dbo].[tblBannerEvento] DROP CONSTRAINT [FK_tblBannerEvento_tblBannerEventoTipo]
GO
ALTER TABLE [dbo].[tblBannerEvento] DROP CONSTRAINT [FK_tblBannerEvento_tblBanner]
GO
ALTER TABLE [dbo].[tblBannerEvento] DROP CONSTRAINT [FK_tblBannerEvento_tblArquivo]
GO
ALTER TABLE [dbo].[tblBannerArquivo] DROP CONSTRAINT [FK_tblBannerArquivo_tblBanner]
GO
ALTER TABLE [dbo].[tblBannerArquivo] DROP CONSTRAINT [FK_tblBannerArquivo_tblArquivo]
GO
ALTER TABLE [dbo].[tblBannerAprovacaoItem] DROP CONSTRAINT [FK_tblBannerAprovacao_tblUsuario]
GO
ALTER TABLE [dbo].[tblBannerAprovacaoItem] DROP CONSTRAINT [FK_tblBannerAprovacao_tblBanner]
GO
ALTER TABLE [dbo].[tblBannerAprovacaoHistorico] DROP CONSTRAINT [FK_tblBannerAprovacaoHistorico_tblBanner]
GO
ALTER TABLE [dbo].[tblBanner] DROP CONSTRAINT [FK_tblBanner_tblTarget]
GO
ALTER TABLE [dbo].[tblBanner] DROP CONSTRAINT [FK_tblBanner_tblSite]
GO
ALTER TABLE [dbo].[tblBanner] DROP CONSTRAINT [FK_tblBanner_tblBannerTipo]
GO
ALTER TABLE [dbo].[tblAssociadoArquivo] DROP CONSTRAINT [FK_tblAssociadoArquivo_tblAssociado]
GO
ALTER TABLE [dbo].[tblAssociadoArquivo] DROP CONSTRAINT [FK_tblAssociadoArquivo_tblArquivo]
GO
ALTER TABLE [dbo].[tblAssociado] DROP CONSTRAINT [FK_tblAssociado_tblTipoPessoa]
GO
ALTER TABLE [dbo].[tblAssociado] DROP CONSTRAINT [FK_tblAssociado_tblSite]
GO
ALTER TABLE [dbo].[tblAssociado] DROP CONSTRAINT [FK_tblAssociado_tblPais]
GO
ALTER TABLE [dbo].[tblAssociado] DROP CONSTRAINT [FK_tblAssociado_tblAssociadoCategoria]
GO
ALTER TABLE [dbo].[tblArquivoArquivoCategoria] DROP CONSTRAINT [FK_tblArquivoArquivoCategoria_tblArquivoCategoria]
GO
ALTER TABLE [dbo].[tblArquivoArquivoCategoria] DROP CONSTRAINT [FK_tblArquivoArquivoCategoria_tblArquivo]
GO
ALTER TABLE [dbo].[tblArquivo] DROP CONSTRAINT [FK_tblArquivo_tblPasta]
GO
/****** Object:  Table [dbo].[tblUsuarioUsuarioGrupo]    Script Date: 06/08/2015 22:47:39 ******/
DROP TABLE [dbo].[tblUsuarioUsuarioGrupo]
GO
/****** Object:  Table [dbo].[tblUsuarioSistema]    Script Date: 06/08/2015 22:47:39 ******/
DROP TABLE [dbo].[tblUsuarioSistema]
GO
/****** Object:  Table [dbo].[tblUsuarioGrupo]    Script Date: 06/08/2015 22:47:39 ******/
DROP TABLE [dbo].[tblUsuarioGrupo]
GO
/****** Object:  Table [dbo].[tblUsuarioFuncionalidade]    Script Date: 06/08/2015 22:47:39 ******/
DROP TABLE [dbo].[tblUsuarioFuncionalidade]
GO
/****** Object:  Table [dbo].[tblUsuario]    Script Date: 06/08/2015 22:47:39 ******/
DROP TABLE [dbo].[tblUsuario]
GO
/****** Object:  Table [dbo].[tblTipoPessoa]    Script Date: 06/08/2015 22:47:39 ******/
DROP TABLE [dbo].[tblTipoPessoa]
GO
/****** Object:  Table [dbo].[tblTarget]    Script Date: 06/08/2015 22:47:39 ******/
DROP TABLE [dbo].[tblTarget]
GO
/****** Object:  Table [dbo].[tblSiteChave]    Script Date: 06/08/2015 22:47:39 ******/
DROP TABLE [dbo].[tblSiteChave]
GO
/****** Object:  Table [dbo].[tblSite]    Script Date: 06/08/2015 22:47:39 ******/
DROP TABLE [dbo].[tblSite]
GO
/****** Object:  Table [dbo].[tblSistema]    Script Date: 06/08/2015 22:47:39 ******/
DROP TABLE [dbo].[tblSistema]
GO
/****** Object:  Table [dbo].[tblRegraTipo]    Script Date: 06/08/2015 22:47:39 ******/
DROP TABLE [dbo].[tblRegraTipo]
GO
/****** Object:  Table [dbo].[tblRegraPassoCondicao]    Script Date: 06/08/2015 22:47:39 ******/
DROP TABLE [dbo].[tblRegraPassoCondicao]
GO
/****** Object:  Table [dbo].[tblRegraPasso]    Script Date: 06/08/2015 22:47:39 ******/
DROP TABLE [dbo].[tblRegraPasso]
GO
/****** Object:  Table [dbo].[tblRegra]    Script Date: 06/08/2015 22:47:39 ******/
DROP TABLE [dbo].[tblRegra]
GO
/****** Object:  Table [dbo].[tblPublicacaoTipoRegra]    Script Date: 06/08/2015 22:47:39 ******/
DROP TABLE [dbo].[tblPublicacaoTipoRegra]
GO
/****** Object:  Table [dbo].[tblPublicacaoTipo]    Script Date: 06/08/2015 22:47:39 ******/
DROP TABLE [dbo].[tblPublicacaoTipo]
GO
/****** Object:  Table [dbo].[tblPublicacaoRestricaoUsuarioGrupo]    Script Date: 06/08/2015 22:47:39 ******/
DROP TABLE [dbo].[tblPublicacaoRestricaoUsuarioGrupo]
GO
/****** Object:  Table [dbo].[tblPublicacaoRestricaoUsuario]    Script Date: 06/08/2015 22:47:39 ******/
DROP TABLE [dbo].[tblPublicacaoRestricaoUsuario]
GO
/****** Object:  Table [dbo].[tblPublicacaoRestricao]    Script Date: 06/08/2015 22:47:39 ******/
DROP TABLE [dbo].[tblPublicacaoRestricao]
GO
/****** Object:  Table [dbo].[tblPublicacaoIdiomaExcecao]    Script Date: 06/08/2015 22:47:39 ******/
DROP TABLE [dbo].[tblPublicacaoIdiomaExcecao]
GO
/****** Object:  Table [dbo].[tblPublicacaoArquivo]    Script Date: 06/08/2015 22:47:39 ******/
DROP TABLE [dbo].[tblPublicacaoArquivo]
GO
/****** Object:  Table [dbo].[tblPublicacaoAprovacaoItem]    Script Date: 06/08/2015 22:47:39 ******/
DROP TABLE [dbo].[tblPublicacaoAprovacaoItem]
GO
/****** Object:  Table [dbo].[tblPublicacaoAprovacaoHistorico]    Script Date: 06/08/2015 22:47:39 ******/
DROP TABLE [dbo].[tblPublicacaoAprovacaoHistorico]
GO
/****** Object:  Table [dbo].[tblPublicacao]    Script Date: 06/08/2015 22:47:39 ******/
DROP TABLE [dbo].[tblPublicacao]
GO
/****** Object:  Table [dbo].[tblPasta]    Script Date: 06/08/2015 22:47:39 ******/
DROP TABLE [dbo].[tblPasta]
GO
/****** Object:  Table [dbo].[tblPais]    Script Date: 06/08/2015 22:47:39 ******/
DROP TABLE [dbo].[tblPais]
GO
/****** Object:  Table [dbo].[tblMenuTipoAcao]    Script Date: 06/08/2015 22:47:40 ******/
DROP TABLE [dbo].[tblMenuTipoAcao]
GO
/****** Object:  Table [dbo].[tblMenuTipo]    Script Date: 06/08/2015 22:47:40 ******/
DROP TABLE [dbo].[tblMenuTipo]
GO
/****** Object:  Table [dbo].[tblMenuRestricaoUsuarioGrupo]    Script Date: 06/08/2015 22:47:40 ******/
DROP TABLE [dbo].[tblMenuRestricaoUsuarioGrupo]
GO
/****** Object:  Table [dbo].[tblMenuRestricaoUsuario]    Script Date: 06/08/2015 22:47:40 ******/
DROP TABLE [dbo].[tblMenuRestricaoUsuario]
GO
/****** Object:  Table [dbo].[tblMenuIdiomaExcecao]    Script Date: 06/08/2015 22:47:40 ******/
DROP TABLE [dbo].[tblMenuIdiomaExcecao]
GO
/****** Object:  Table [dbo].[tblMenuArquivo]    Script Date: 06/08/2015 22:47:40 ******/
DROP TABLE [dbo].[tblMenuArquivo]
GO
/****** Object:  Table [dbo].[tblMenu]    Script Date: 06/08/2015 22:47:40 ******/
DROP TABLE [dbo].[tblMenu]
GO
/****** Object:  Table [dbo].[tblMailing]    Script Date: 06/08/2015 22:47:40 ******/
DROP TABLE [dbo].[tblMailing]
GO
/****** Object:  Table [dbo].[tblIdioma]    Script Date: 06/08/2015 22:47:40 ******/
DROP TABLE [dbo].[tblIdioma]
GO
/****** Object:  Table [dbo].[tblFuncionalidadeGrupo]    Script Date: 06/08/2015 22:47:40 ******/
DROP TABLE [dbo].[tblFuncionalidadeGrupo]
GO
/****** Object:  Table [dbo].[tblFuncionalidade]    Script Date: 06/08/2015 22:47:40 ******/
DROP TABLE [dbo].[tblFuncionalidade]
GO
/****** Object:  Table [dbo].[tblEditoriaIdiomaExcecao]    Script Date: 06/08/2015 22:47:40 ******/
DROP TABLE [dbo].[tblEditoriaIdiomaExcecao]
GO
/****** Object:  Table [dbo].[tblEditoria]    Script Date: 06/08/2015 22:47:40 ******/
DROP TABLE [dbo].[tblEditoria]
GO
/****** Object:  Table [dbo].[tblConteudo]    Script Date: 06/08/2015 22:47:40 ******/
DROP TABLE [dbo].[tblConteudo]
GO
/****** Object:  Table [dbo].[tblConfiguracao]    Script Date: 06/08/2015 22:47:40 ******/
DROP TABLE [dbo].[tblConfiguracao]
GO
/****** Object:  Table [dbo].[tblCalculadoraItem]    Script Date: 06/08/2015 22:47:40 ******/
DROP TABLE [dbo].[tblCalculadoraItem]
GO
/****** Object:  Table [dbo].[tblCalculadora]    Script Date: 06/08/2015 22:47:40 ******/
DROP TABLE [dbo].[tblCalculadora]
GO
/****** Object:  Table [dbo].[tblBannerTipo]    Script Date: 06/08/2015 22:47:40 ******/
DROP TABLE [dbo].[tblBannerTipo]
GO
/****** Object:  Table [dbo].[tblBannerRestricaoUsuarioGrupo]    Script Date: 06/08/2015 22:47:40 ******/
DROP TABLE [dbo].[tblBannerRestricaoUsuarioGrupo]
GO
/****** Object:  Table [dbo].[tblBannerRestricaoUsuario]    Script Date: 06/08/2015 22:47:40 ******/
DROP TABLE [dbo].[tblBannerRestricaoUsuario]
GO
/****** Object:  Table [dbo].[tblBannerIdiomaExcecao]    Script Date: 06/08/2015 22:47:40 ******/
DROP TABLE [dbo].[tblBannerIdiomaExcecao]
GO
/****** Object:  Table [dbo].[tblBannerEventoTipo]    Script Date: 06/08/2015 22:47:40 ******/
DROP TABLE [dbo].[tblBannerEventoTipo]
GO
/****** Object:  Table [dbo].[tblBannerEvento]    Script Date: 06/08/2015 22:47:40 ******/
DROP TABLE [dbo].[tblBannerEvento]
GO
/****** Object:  Table [dbo].[tblBannerArquivo]    Script Date: 06/08/2015 22:47:40 ******/
DROP TABLE [dbo].[tblBannerArquivo]
GO
/****** Object:  Table [dbo].[tblBannerAprovacaoItem]    Script Date: 06/08/2015 22:47:40 ******/
DROP TABLE [dbo].[tblBannerAprovacaoItem]
GO
/****** Object:  Table [dbo].[tblBannerAprovacaoHistorico]    Script Date: 06/08/2015 22:47:40 ******/
DROP TABLE [dbo].[tblBannerAprovacaoHistorico]
GO
/****** Object:  Table [dbo].[tblBanner]    Script Date: 06/08/2015 22:47:40 ******/
DROP TABLE [dbo].[tblBanner]
GO
/****** Object:  Table [dbo].[tblAssociadoCategoria]    Script Date: 06/08/2015 22:47:40 ******/
DROP TABLE [dbo].[tblAssociadoCategoria]
GO
/****** Object:  Table [dbo].[tblAssociadoArquivo]    Script Date: 06/08/2015 22:47:40 ******/
DROP TABLE [dbo].[tblAssociadoArquivo]
GO
/****** Object:  Table [dbo].[tblAssociado]    Script Date: 06/08/2015 22:47:40 ******/
DROP TABLE [dbo].[tblAssociado]
GO
/****** Object:  Table [dbo].[tblArquivoCategoriaTipo]    Script Date: 06/08/2015 22:47:40 ******/
DROP TABLE [dbo].[tblArquivoCategoriaTipo]
GO
/****** Object:  Table [dbo].[tblArquivoCategoria]    Script Date: 06/08/2015 22:47:40 ******/
DROP TABLE [dbo].[tblArquivoCategoria]
GO
/****** Object:  Table [dbo].[tblArquivoArquivoCategoria]    Script Date: 06/08/2015 22:47:40 ******/
DROP TABLE [dbo].[tblArquivoArquivoCategoria]
GO
/****** Object:  Table [dbo].[tblArquivo]    Script Date: 06/08/2015 22:47:40 ******/
DROP TABLE [dbo].[tblArquivo]
GO
/****** Object:  UserDefinedFunction [dbo].[GetUsuarioGrupo]    Script Date: 06/08/2015 22:47:40 ******/
DROP FUNCTION [dbo].[GetUsuarioGrupo]
GO
/****** Object:  UserDefinedFunction [dbo].[GetRegraPublicacaoAprovacaoItem]    Script Date: 06/08/2015 22:47:40 ******/
DROP FUNCTION [dbo].[GetRegraPublicacaoAprovacaoItem]
GO
/****** Object:  UserDefinedFunction [dbo].[GetRegraPassoResultadoFinal]    Script Date: 06/08/2015 22:47:40 ******/
DROP FUNCTION [dbo].[GetRegraPassoResultadoFinal]
GO
/****** Object:  UserDefinedFunction [dbo].[GetRegraPassoResultado]    Script Date: 06/08/2015 22:47:40 ******/
DROP FUNCTION [dbo].[GetRegraPassoResultado]
GO
/****** Object:  UserDefinedFunction [dbo].[GetRegraPassoCondicaoResultado]    Script Date: 06/08/2015 22:47:40 ******/
DROP FUNCTION [dbo].[GetRegraPassoCondicaoResultado]
GO
/****** Object:  UserDefinedFunction [dbo].[GetPublicacaoAcessoUsuario]    Script Date: 06/08/2015 22:47:40 ******/
DROP FUNCTION [dbo].[GetPublicacaoAcessoUsuario]
GO
/****** Object:  UserDefinedFunction [dbo].[GetPublicacao_UsuarioElegivel]    Script Date: 06/08/2015 22:47:40 ******/
DROP FUNCTION [dbo].[GetPublicacao_UsuarioElegivel]
GO
/****** Object:  UserDefinedFunction [dbo].[GetMenuAcessoUsuario]    Script Date: 06/08/2015 22:47:40 ******/
DROP FUNCTION [dbo].[GetMenuAcessoUsuario]
GO
/****** Object:  UserDefinedFunction [dbo].[GetBannerAcessoUsuario]    Script Date: 06/08/2015 22:47:40 ******/
DROP FUNCTION [dbo].[GetBannerAcessoUsuario]
GO
/****** Object:  UserDefinedFunction [dbo].[fnSplit]    Script Date: 06/08/2015 22:47:40 ******/
DROP FUNCTION [dbo].[fnSplit]
GO
/****** Object:  UserDefinedFunction [dbo].[fnRetornaUsuarioUsuarioGrupo]    Script Date: 06/08/2015 22:47:40 ******/
DROP FUNCTION [dbo].[fnRetornaUsuarioUsuarioGrupo]
GO
/****** Object:  UserDefinedFunction [dbo].[fnRetornaUsuarioPublicacao]    Script Date: 06/08/2015 22:47:40 ******/
DROP FUNCTION [dbo].[fnRetornaUsuarioPublicacao]
GO
/****** Object:  UserDefinedFunction [dbo].[fnRetornaUsuarioMenu]    Script Date: 06/08/2015 22:47:40 ******/
DROP FUNCTION [dbo].[fnRetornaUsuarioMenu]
GO
/****** Object:  UserDefinedFunction [dbo].[fnRetornaUsuarioGrupoMenu]    Script Date: 06/08/2015 22:47:40 ******/
DROP FUNCTION [dbo].[fnRetornaUsuarioGrupoMenu]
GO
/****** Object:  UserDefinedFunction [dbo].[fnRetornaUsuarioGrupoBanner]    Script Date: 06/08/2015 22:47:40 ******/
DROP FUNCTION [dbo].[fnRetornaUsuarioGrupoBanner]
GO
/****** Object:  UserDefinedFunction [dbo].[fnRetornaUsuarioGrupo]    Script Date: 06/08/2015 22:47:40 ******/
DROP FUNCTION [dbo].[fnRetornaUsuarioGrupo]
GO
/****** Object:  UserDefinedFunction [dbo].[fnRetornaUsuarioBanner]    Script Date: 06/08/2015 22:47:40 ******/
DROP FUNCTION [dbo].[fnRetornaUsuarioBanner]
GO
/****** Object:  UserDefinedFunction [dbo].[fnRetornaArquivoCategoria]    Script Date: 06/08/2015 22:47:40 ******/
DROP FUNCTION [dbo].[fnRetornaArquivoCategoria]
GO
/****** Object:  UserDefinedFunction [dbo].[fnGetPublicacaoArquivoDestaque]    Script Date: 06/08/2015 22:47:40 ******/
DROP FUNCTION [dbo].[fnGetPublicacaoArquivoDestaque]
GO
/****** Object:  UserDefinedFunction [dbo].[fnGetMenuIcone]    Script Date: 06/08/2015 22:47:40 ******/
DROP FUNCTION [dbo].[fnGetMenuIcone]
GO
/****** Object:  UserDefinedFunction [dbo].[fnGetBannerArquivo]    Script Date: 06/08/2015 22:47:40 ******/
DROP FUNCTION [dbo].[fnGetBannerArquivo]
GO
/****** Object:  StoredProcedure [dbo].[USP_UPD_Pasta_Reposicionar]    Script Date: 06/08/2015 22:47:40 ******/
DROP PROCEDURE [dbo].[USP_UPD_Pasta_Reposicionar]
GO
/****** Object:  StoredProcedure [dbo].[USP_UPD_Menu_Reposicionar]    Script Date: 06/08/2015 22:47:40 ******/
DROP PROCEDURE [dbo].[USP_UPD_Menu_Reposicionar]
GO
/****** Object:  StoredProcedure [dbo].[USP_UPD_LoginSenha]    Script Date: 06/08/2015 22:47:40 ******/
DROP PROCEDURE [dbo].[USP_UPD_LoginSenha]
GO
/****** Object:  StoredProcedure [dbo].[USP_SEL_UsuarioGrupo]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_SEL_UsuarioGrupo]
GO
/****** Object:  StoredProcedure [dbo].[USP_SEL_UsuarioFuncionalidade]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_SEL_UsuarioFuncionalidade]
GO
/****** Object:  StoredProcedure [dbo].[USP_SEL_Site]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_SEL_Site]
GO
/****** Object:  StoredProcedure [dbo].[USP_SEL_RegraPassoCondicao]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_SEL_RegraPassoCondicao]
GO
/****** Object:  StoredProcedure [dbo].[USP_SEL_RegraPasso]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_SEL_RegraPasso]
GO
/****** Object:  StoredProcedure [dbo].[USP_SEL_Regra]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_SEL_Regra]
GO
/****** Object:  StoredProcedure [dbo].[USP_SEL_PublicacaoTipoRegra]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_SEL_PublicacaoTipoRegra]
GO
/****** Object:  StoredProcedure [dbo].[USP_SEL_PublicacaoRegraPasso_Usuario]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_SEL_PublicacaoRegraPasso_Usuario]
GO
/****** Object:  StoredProcedure [dbo].[USP_SEL_PublicacaoRegraPasso]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_SEL_PublicacaoRegraPasso]
GO
/****** Object:  StoredProcedure [dbo].[USP_SEL_PublicacaoArquivo]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_SEL_PublicacaoArquivo]
GO
/****** Object:  StoredProcedure [dbo].[USP_SEL_PublicacaoAprovacaoHistorico]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_SEL_PublicacaoAprovacaoHistorico]
GO
/****** Object:  StoredProcedure [dbo].[USP_SEL_Publicacao]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_SEL_Publicacao]
GO
/****** Object:  StoredProcedure [dbo].[USP_SEL_Pasta]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_SEL_Pasta]
GO
/****** Object:  StoredProcedure [dbo].[USP_SEL_MenuArquivo]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_SEL_MenuArquivo]
GO
/****** Object:  StoredProcedure [dbo].[USP_SEL_Menu_Tree]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_SEL_Menu_Tree]
GO
/****** Object:  StoredProcedure [dbo].[USP_SEL_Menu]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_SEL_Menu]
GO
/****** Object:  StoredProcedure [dbo].[USP_SEL_Mailing]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_SEL_Mailing]
GO
/****** Object:  StoredProcedure [dbo].[USP_SEL_LoginEmail]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_SEL_LoginEmail]
GO
/****** Object:  StoredProcedure [dbo].[USP_SEL_Login]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_SEL_Login]
GO
/****** Object:  StoredProcedure [dbo].[USP_SEL_GeralArquivo]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_SEL_GeralArquivo]
GO
/****** Object:  StoredProcedure [dbo].[USP_SEL_Funcionalidade]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_SEL_Funcionalidade]
GO
/****** Object:  StoredProcedure [dbo].[USP_SEL_Editoria]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_SEL_Editoria]
GO
/****** Object:  StoredProcedure [dbo].[USP_SEL_Conteudo]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_SEL_Conteudo]
GO
/****** Object:  StoredProcedure [dbo].[USP_SEL_Configuracao]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_SEL_Configuracao]
GO
/****** Object:  StoredProcedure [dbo].[USP_SEL_Calculadora]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_SEL_Calculadora]
GO
/****** Object:  StoredProcedure [dbo].[USP_SEL_BannerArquivo]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_SEL_BannerArquivo]
GO
/****** Object:  StoredProcedure [dbo].[USP_SEL_Banner]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_SEL_Banner]
GO
/****** Object:  StoredProcedure [dbo].[USP_SEL_Associado]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_SEL_Associado]
GO
/****** Object:  StoredProcedure [dbo].[USP_SEL_Arquivo]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_SEL_Arquivo]
GO
/****** Object:  StoredProcedure [dbo].[USP_INS_UsuarioGrupo]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_INS_UsuarioGrupo]
GO
/****** Object:  StoredProcedure [dbo].[USP_INS_UsuarioFuncionalidade]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_INS_UsuarioFuncionalidade]
GO
/****** Object:  StoredProcedure [dbo].[USP_INS_Site]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_INS_Site]
GO
/****** Object:  StoredProcedure [dbo].[USP_INS_RegraPassoCondicao]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_INS_RegraPassoCondicao]
GO
/****** Object:  StoredProcedure [dbo].[USP_INS_RegraPasso]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_INS_RegraPasso]
GO
/****** Object:  StoredProcedure [dbo].[USP_INS_Regra]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_INS_Regra]
GO
/****** Object:  StoredProcedure [dbo].[USP_INS_PublicacaoTipoRegra]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_INS_PublicacaoTipoRegra]
GO
/****** Object:  StoredProcedure [dbo].[USP_INS_PublicacaoRestricao]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_INS_PublicacaoRestricao]
GO
/****** Object:  StoredProcedure [dbo].[USP_INS_PublicacaoIdiomaExcecao]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_INS_PublicacaoIdiomaExcecao]
GO
/****** Object:  StoredProcedure [dbo].[USP_INS_PublicacaoArquivo]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_INS_PublicacaoArquivo]
GO
/****** Object:  StoredProcedure [dbo].[USP_INS_PublicacaoAprovacaoItem]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_INS_PublicacaoAprovacaoItem]
GO
/****** Object:  StoredProcedure [dbo].[USP_INS_Publicacao_Liberacao]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_INS_Publicacao_Liberacao]
GO
/****** Object:  StoredProcedure [dbo].[USP_INS_Publicacao]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_INS_Publicacao]
GO
/****** Object:  StoredProcedure [dbo].[USP_INS_Pasta]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_INS_Pasta]
GO
/****** Object:  StoredProcedure [dbo].[USP_INS_MenuIdiomaExcecao]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_INS_MenuIdiomaExcecao]
GO
/****** Object:  StoredProcedure [dbo].[USP_INS_MenuArquivo]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_INS_MenuArquivo]
GO
/****** Object:  StoredProcedure [dbo].[USP_INS_Menu]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_INS_Menu]
GO
/****** Object:  StoredProcedure [dbo].[USP_INS_Mailing]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_INS_Mailing]
GO
/****** Object:  StoredProcedure [dbo].[USP_INS_Login]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_INS_Login]
GO
/****** Object:  StoredProcedure [dbo].[USP_INS_EditoriaIdiomaExcecao]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_INS_EditoriaIdiomaExcecao]
GO
/****** Object:  StoredProcedure [dbo].[USP_INS_Editoria]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_INS_Editoria]
GO
/****** Object:  StoredProcedure [dbo].[USP_INS_Configuracao]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_INS_Configuracao]
GO
/****** Object:  StoredProcedure [dbo].[USP_INS_BannerIdiomaExcecao]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_INS_BannerIdiomaExcecao]
GO
/****** Object:  StoredProcedure [dbo].[USP_INS_BannerEvento]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_INS_BannerEvento]
GO
/****** Object:  StoredProcedure [dbo].[USP_INS_BannerArquivo]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_INS_BannerArquivo]
GO
/****** Object:  StoredProcedure [dbo].[USP_INS_Banner]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_INS_Banner]
GO
/****** Object:  StoredProcedure [dbo].[USP_INS_Associado]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_INS_Associado]
GO
/****** Object:  StoredProcedure [dbo].[USP_INS_Arquivo]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_INS_Arquivo]
GO
/****** Object:  StoredProcedure [dbo].[USP_DEL_UsuarioGrupo]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_DEL_UsuarioGrupo]
GO
/****** Object:  StoredProcedure [dbo].[USP_DEL_Site]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_DEL_Site]
GO
/****** Object:  StoredProcedure [dbo].[USP_DEL_RegraPassoCondicao]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_DEL_RegraPassoCondicao]
GO
/****** Object:  StoredProcedure [dbo].[USP_DEL_RegraPasso]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_DEL_RegraPasso]
GO
/****** Object:  StoredProcedure [dbo].[USP_DEL_Regra]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_DEL_Regra]
GO
/****** Object:  StoredProcedure [dbo].[USP_DEL_PublicacaoTipoRegra]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_DEL_PublicacaoTipoRegra]
GO
/****** Object:  StoredProcedure [dbo].[USP_DEL_PublicacaoRegra]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_DEL_PublicacaoRegra]
GO
/****** Object:  StoredProcedure [dbo].[USP_DEL_PublicacaoAprovacaoItem]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_DEL_PublicacaoAprovacaoItem]
GO
/****** Object:  StoredProcedure [dbo].[USP_DEL_Publicacao]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_DEL_Publicacao]
GO
/****** Object:  StoredProcedure [dbo].[USP_DEL_Pasta]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_DEL_Pasta]
GO
/****** Object:  StoredProcedure [dbo].[USP_DEL_Menu]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_DEL_Menu]
GO
/****** Object:  StoredProcedure [dbo].[USP_DEL_Login]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_DEL_Login]
GO
/****** Object:  StoredProcedure [dbo].[USP_DEL_Editoria]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_DEL_Editoria]
GO
/****** Object:  StoredProcedure [dbo].[USP_DEL_Banner]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_DEL_Banner]
GO
/****** Object:  StoredProcedure [dbo].[USP_DEL_Associado]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_DEL_Associado]
GO
/****** Object:  StoredProcedure [dbo].[USP_DEL_Arquivo]    Script Date: 06/08/2015 22:47:41 ******/
DROP PROCEDURE [dbo].[USP_DEL_Arquivo]
GO
