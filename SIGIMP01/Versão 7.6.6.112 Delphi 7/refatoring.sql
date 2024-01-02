select * from "usuario"
select * from "usuario_log"




/* Drop procedure */

drop procedure "spr_usuario_clifor";
drop procedure "spr_add_usuario_cliente"
drop procedure "spr_add_usuario_fornecedor";



/* Alterar table usuario_log */
alter table "usuario_log"
  drop constraint "fk00_usuario_log";

ALTER TABLE "usuario_log"
    ADD CONSTRAINT "fk00_usuario_log" FOREIGN KEY ("login") REFERENCES "usuario" ("login") ON UPDATE CASCADE;




/* Drop tables não mais utilizadas */

drop table "usuario_emp";
drop table "usuario_tela";
drop table "tela";
drop table "usuario_sub_modulo";
drop table "sub_modulo";
drop table "modulo";
drop table "sistema"

drop table "usuario_cliente";
drop table "usuario_fornecedor";


/* Drop views não mais utilizadas */

drop view "vwsub_modulo";
drop view "vwtela";
drop view "vwusuario"
drop view "vwusuario_sub_modulo";


select "cod_cliente"
from "cliente"
where "cod_cliente" in (select "cod_cliente"
                          from "usuario_cliente"
                         where "login" = :login)

order by "cod_cliente"


select a."raz_social_reduz",  a."cod_fornecedor"
  from "fornecedor" a, "produto" b
  where
        b."cod_empresa" = :cod_empresa
    and b."cod_fornecedor" = a."cod_fornecedor"
group by 1,2
order by 1

