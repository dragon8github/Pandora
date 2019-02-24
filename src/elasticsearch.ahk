::es.delall::
::esdelall::
::esclear::
::esclean::
::esc::
Var =
(
curl -XDELETE 'http://localhost:9200/_all'
)
cs(Var)
return


::es.put::
::es.post::
::esput::
::espost::
::es.insert::
::esinsert::
::es.add::
::esadd::
Var =
(
curl -XPUT 'http://localhost:9200/get-together/group/1?pretty' -H 'Content-Type:application/json' -d '{"firstName": "JOJO", "lastName": "Joestar"}'
)
cs(Var)
return

::mapes::
::map.es::
::es.map::
::esmap::
::es.mapping::
::esmapping::
::es.maping::
::esmaping::
::es.all::
::esall::
Var =
(
curl 'localhost:9200/_mapping?pretty=true'
)
cs(Var)
return

::esdel::
::es.del::
::es.remove::
::esremove::
Var =
(
curl -XDELETE 'http://localhost:9200/get-together'
)
cs(Var)
return

::esindex::
::es.index::
::esnewindex::
::es.newindex::
Var =
(
curl -XPUT 'http://localhost:9200/new-index'
)
cs(Var)
return

::esmapindex::
::es.mapindex::
Var =
(
curl 'localhost:9200/you-index/_mapping?pretty=true'
)
cs(Var)
Send, {left 22}
return

::esmaptype::
::es.maptype::
Var =
(
curl 'localhost:9200/you-index/_mapping/you-type?pretty=true'
)
cs(Var)
Send, {left 22}
return

::esq::
Var =
(
curl 'http://localhost:9200/get-together/_doc/_search?q=elasticsearch&pretty'
)
cs(Var)
return