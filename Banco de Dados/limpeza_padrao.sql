select * from tblsite

delete from tblPublicacaoArquivo where siteid = 2
delete tblPublicacaoArquivo from tblpublicacao p join tblPublicacaoArquivo pa on pa.publicacaoId=p.publicacaoid where p.siteid = 2
delete tblPublicacaoIdiomaExcecao from tblpublicacao p join tblPublicacaoIdiomaExcecao pa on pa.publicacaoId=p.publicacaoid where p.siteid = 2

delete tblmenuidiomaexcecao
delete tblmenurestricaousuario
delete tblmenurestricaousuariogrupo
delete tblmenu
delete tblmenu from tblpublicacao p join tblmenu pa on pa.publicacaoId=p.publicacaoid where p.siteid = 2


delete from tblPublicacaorestricao
delete from tblPublicacaoArquivo
delete from tblPublicacaoAprovacaoHistorico
delete from tblPublicacaoIdiomaExcecao
delete from tblPublicacaoRestricaoUsuarioGrupo

delete from tblBannerArquivo
delete from tblBannerEvento
delete from tblBannerIdiomaExcecao
delete from tblBannerRestricaoUsuario
delete from tblBannerRestricaoUsuarioGrupo
delete from tblBanner

delete from tblPublicacaoAprovacaoItem
delete from tblPublicacaoRestricaoUsuario
delete from tblPublicacao 

delete from tblArquivoArquivoCategoria
delete from tblArquivo
delete from tblPasta
delete from tblAssociado

delete from tblMailing

delete from tblRegraPassoCondicao
delete from tblUsuarioGrupo

delete from tblRegraPasso
delete from tblRegra

delete from tblconfiguracao where siteid = 3
delete from tblsite where siteid = 3
