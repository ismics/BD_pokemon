drop database if exists BD_Pokemon;
create database BD_Pokemon;
use BD_Pokemon;

create table entrenadores (
id_entrenador int not null auto_increment,
nombre varchar(20) not null,
genero varchar(20) not null,
id_liga_pokemon int not null,
id_bolsa int not null,
primary key (id_entrenador)
);

INSERT INTO entrenadores VALUES(1, 'Ismael', 'Masculino', 1, 1);
INSERT INTO entrenadores VALUES(2, 'Azael', 'Masculino', 2, 2);
INSERT INTO entrenadores VALUES(3, 'Santos', 'Masculino', 3, 3);
INSERT INTO entrenadores VALUES(4, 'JJ', 'Femenino', 4, 4);
INSERT INTO entrenadores VALUES(5, 'Yeray', 'Masculino', 5, 5);

create table pokemons (
id_pokemon int not null auto_increment,
nombre varchar(20) not null,
nivel int not null,
movimientos varchar(20) not null,
naturaleza varchar(20) not null,
id_entrenador int not null,
primary key (id_pokemon)
);

INSERT INTO pokemons VALUES(1, 'Pikachu', '10', 'Inpactrueno', 'Audaz', 1);
INSERT INTO pokemons VALUES(2, 'Bulbasaur', '12', 'Rayo solar', 'Osada', 2);
INSERT INTO pokemons VALUES(3, 'Charmander', '11', 'anillo igneo', 'Amable', 3);
INSERT INTO pokemons VALUES(4, 'Squirtel', '13', 'Pistola agua', 'Dócil', 4);
INSERT INTO pokemons VALUES(5, 'Eevee', '9', 'Placaje', 'Modesta', 5);

create table gimnasios (
id_gimnasio int not null auto_increment,
nombre varchar(20) not null,
especialidad varchar(20) not null,
líder varchar(20) not null,
id_medalla int not null,
id_ciudad int not null,
primary key (id_gimnasio)
);

INSERT INTO gimnasios VALUE(1, 'Plateada', 'Roca', 'Brock', 1, 1);
INSERT INTO gimnasios VALUE(2, 'Celeste', 'Agua', 'Misty', 2, 2);
INSERT INTO gimnasios VALUE(3, 'Azafran', 'psiquico', 'Sabrina', 3, 3);
INSERT INTO gimnasios VALUE(4, 'Fucsia', 'Veneno', 'Koga', 4, 4);
INSERT INTO gimnasios VALUE(5, 'Verde', 'Planta', 'Erika', 5, 5);

create table medallas (
id_medalla int not null auto_increment,
nombre varchar(20) not null,
primary key (id_medalla)
);

INSERT INTO medallas VALUE(1, 'Medalla Roca');
INSERT INTO medallas VALUE(2, 'Medalla Cascada');
INSERT INTO medallas VALUE(3, 'Medalla Alma');
INSERT INTO medallas VALUE(4, 'Medalla Arco Iris');
INSERT INTO medallas VALUE(5, 'Medalla Pradera');

create table liga_pokemon (
id_liga_pokemon int not null auto_increment,
numero_alto_mando int not null,
nombre varchar(20) not null,
primary key (id_liga_pokemon)
);

INSERT INTO liga_pokemon VALUE(1, 1, 'Lorelei');
INSERT INTO liga_pokemon VALUE(2, 2, 'Bruno');
INSERT INTO liga_pokemon VALUE(3, 3, 'Agatha');
INSERT INTO liga_pokemon VALUE(4, 4, 'Lance');
INSERT INTO liga_pokemon VALUE(5, 5, 'Blue');

create table tipos (
id_tipo int not null auto_increment,
nombre varchar(20) not null,
primary key (id_tipo)
);

INSERT INTO tipos VALUE(1, 'Electrico');
INSERT INTO tipos VALUE(2, 'Planta');
INSERT INTO tipos VALUE(3, 'Fuego');
INSERT INTO tipos VALUE(4, 'Agua');
INSERT INTO tipos VALUE(5, 'Normal');

create table ciudades (
id_ciudad int not null auto_increment,
nombre varchar(20) not null,
id_region int not null,
primary key (id_ciudad)
);

INSERT INTO ciudades VALUE(1, 'Ciudad Plateada', 1);
INSERT INTO ciudades VALUE(2, 'Ciudad Celeste', 2);
INSERT INTO ciudades VALUE(3, 'Ciudad Azafran', 3);
INSERT INTO ciudades VALUE(4, 'Ciudad Fucsia', 4);
INSERT INTO ciudades VALUE(5, 'Ciudad Verde', 5);

create table region (
id_region int not null auto_increment,
nombre varchar(20) not null,
primary key (id_region)
);

INSERT INTO region VALUE(1, 'Kanto');
INSERT INTO region VALUE(2, 'Johto');
INSERT INTO region VALUE(3, 'Hoenn');
INSERT INTO region VALUE(4, 'Sinnoh');
INSERT INTO region VALUE(5, 'Unova');

create table bolsa (
id_bolsa int not null auto_increment,
objetos_clave varchar(20) not null,
medicinas varchar(20) not null,
objetos_de_combate varchar(20) not null,
MT_MO varchar(20) not null,
bayas varchar(20) not null,
objetos_de_coleccion varchar(20) not null, 
primary key (id_bolsa)
);

INSERT INTO bolsa VALUE(1, 'Bicicleta', 'Pocion', 'Caramelo raro', 'MT01', 'Aranja', 'Moneda Estrella');
INSERT INTO bolsa VALUE(2, 'Caña de pescar', 'Superpocion', 'Hierro', 'MT28', 'Zreza', 'Piedras evolutivas');
INSERT INTO bolsa VALUE(3, 'MO', 'Restaurar', 'Carburante', 'MT45', 'Meloc', 'Fotografias pokemon');
INSERT INTO bolsa VALUE(4, 'Tarj_entrenador', 'Revivir', 'Calcio', 'MT60', 'Safre', 'obras de arte');
INSERT INTO bolsa VALUE(5, 'Pase de tren', 'Maxrevivir', 'Proteina', 'MT80', 'Aslac', 'exposiciones');

create table evoluciones (
id_evolucion int not null auto_increment,
nivel_de_evolucion int not null,
objeto_de_evolucion varchar(20) not null,
primary key (id_evolucion)
);

INSERT INTO evoluciones VALUE(1, '16', 'no requiere');
INSERT INTO evoluciones VALUE(2, '16', 'no requere');
INSERT INTO evoluciones VALUE(3, '16', 'no requiere');
INSERT INTO evoluciones VALUE(4, '0', 'Piedra trueno');
INSERT INTO evoluciones VALUE(5, '0', 'Piedras evolutivas');

create table gim_ent (
id_entrenador int not null,
id_gimnasio int not null,
primary key (id_entrenador,id_gimnasio)
);

INSERT INTO gim_ent VALUE(1, 1);
INSERT INTO gim_ent VALUE(2, 2);
INSERT INTO gim_ent VALUE(3, 3);
INSERT INTO gim_ent VALUE(4, 4);
INSERT INTO gim_ent VALUE(5, 5);

create table pok_evo (
id_pokemon int not null,
id_evolucion int not null,
primary key (id_pokemon,id_evolucion)
);

INSERT INTO pok_evo VALUE(1, 1);
INSERT INTO pok_evo VALUE(2, 2);
INSERT INTO pok_evo VALUE(3, 3);
INSERT INTO pok_evo VALUE(4, 4);
INSERT INTO pok_evo VALUE(5, 5);

create table pok_tip (
id_pokemon int not null,
id_tipo int not null,
primary key (id_pokemon,id_tipo)
);

INSERT INTO pok_tip VALUE(1, 1);
INSERT INTO pok_tip VALUE(2, 2);
INSERT INTO pok_tip VALUE(3, 3);
INSERT INTO pok_tip VALUE(4, 4);
INSERT INTO pok_tip VALUE(5, 5);

alter table gim_ent
add constraint fkgim_ent1 foreign key(id_entrenador) references entrenadores (id_entrenador),
add constraint fkgim_ent2 foreign key(id_gimnasio) references gimnasios (id_gimnasio);

alter table pok_evo
add constraint fkpok_evo1 foreign key(id_pokemon) references pokemons (id_pokemon),
add constraint fkpok_evo2 foreign key(id_evolucion) references evoluciones (id_evolucion);

alter table pok_tip
add constraint fkpok_tip1 foreign key(id_pokemon) references pokemons (id_pokemon),
add constraint fkpok_tip2 foreign key(id_tipo) references tipos (id_tipo);

alter table ciudades
add constraint fkciudades1 foreign key(id_region) references region (id_region);

alter table gimnasios
add constraint fkgimnasios1 foreign key(id_medalla) references medallas (id_medalla),
add constraint fkgimnasios2 foreign key(id_ciudad) references ciudades (id_ciudad);

alter table pokemons
add constraint fkpokemons foreign key(id_entrenador) references entrenadores (id_entrenador);

alter table entrenadores
add constraint fkentrenadores1 foreign key(id_liga_pokemon) references liga_pokemon (id_liga_pokemon),
add constraint fkentrenadores2 foreign key(id_bolsa) references bolsa (id_bolsa);
