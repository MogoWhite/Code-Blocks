---
title: ml
date: 2022-12-06 12:07
---
浴室内を歩く

PREFIX ex: <http://example.org/virtualhome2kg/instance/>
PREFIX : <http://example.org/virtualhome2kg/ontology/>
PREFIX ac: <http://example.org/virtualhome2kg/ontology/action/>
select DISTINCT * where {
    ?event :place ex:bathroom11_scene1 .
    ?event :action ac:walk 
}
