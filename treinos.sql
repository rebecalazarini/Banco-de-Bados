create database treinos;

use database treinos;

create table treinos(
    id_treino primary key auto_increment,
    nome varchar(100),
    idData date,
    duração varchar(100)

);