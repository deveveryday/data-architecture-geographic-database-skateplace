CREATE TABLE table_place (
  id_place            INT PRIMARY KEY AUTO_INCREMENT,
  name_place          VARCHAR(50),
  localization_place  POINT,
  address_place       VARCHAR(100),
  cep_place           VARCHAR(9),
  hour_open           TIME,
  hour_close          TIME,
  date_insert_place   DATETIME DEFAULT CURRENT_TIMESTAMP 
);

CREATE TABLE Table_Facility (
  id_facility           INT PRIMARY KEY AUTO_INCREMENT,
  title_facility        VARCHAR(50),
  description_facility  VARCHAR(50)
);

CREATE TABLE table_place_facility (
  id_place        INT,
  id_facility     INT,
  FOREIGN KEY (id_place) REFERENCES table_place(id_place),
  FOREIGN KEY (id_facility) REFERENCES table_facility(id_facility)
);

-- ----------------------------------------------------

INSERT INTO table_place
  (name_place, address_place, localization_place, cep_place)
VALUES
  ('Sleiman Skate Store',
  'R. Itapura, 1302 - Tatuapé',
  ST_GeomFromText('POINT(-23.5500965 -46.568058)'),
  '03309-000'),
  ('Balão Skatepark',
  'Pr. Gen. Porto Carreiro - Jaguaré',
  ST_GeomFromText('POINT(-23.5465929 -46.7513887)'),
  '05331-040'),
  ('Base in Box',
  'R. Dr. Augusto de Miranda - Pompeia, 835',
  ST_GeomFromText('POINT(-23.5306957 -46.6918467)'),
  '05026-000'),
  ('Bowl Arariba (SKATE PARK)',
  'Dr Gabriel - Vila Prel',
  ST_GeomFromText('POINT(-23.6434158 -46.749664)'),
  '05777-200'),
  ('Bowl Ipasure',
  'R. Luís de Pina - Veleiros',
  ST_GeomFromText('POINT(-23.6869735 -46.7151354)'),
  '04771-220'),
  ('Bowldogz',
  'Praça Durval Pereira, 53 - Vila Paulista',
  ST_GeomFromText('POINT(-23.6374127 -46.6635923)'),
  NULL),
  ('Bowlhouse | Pista de Skate | Vila Mariana',
 'R. Morgado de Mateus, 652 - Vila Mariana',
 ST_GeomFromText('POINT(-23.5872599 -46.650688)'),
 '04015-051'),
 ('Brasil Skate Camp',
 'R. das Macieiras, 249 - Casa Verde Média',
  ST_GeomFromText('POINT(-23.5054852 -46.670525)'),
 '02521-090'),
 ('Carniça Skate Park',
 'Av. Alcântara Machado - Mooca',
  ST_GeomFromText('POINT(-23.5476707 -46.6049065)'),
 '03101-001'),
 ('CDC Arena Radical',
 'Praça Augusto Rademaker Grunewald, 37 - Vila Olímpia',
  ST_GeomFromText('POINT(-23.597256 -46.6927463)'),
 '04548-060'),
 ('CENTRO DE ESPORTES RADICAIS',
 'Av. Pres. Castelo Branco, 5700 - Bom Retiro',
  ST_GeomFromText('POINT(-23.519857 -46.6462001)'),
 '01142-300'),
 ('Chorão Skate Park',
 'Av. Dr. Sebastião Medeiros, 2',
  ST_GeomFromText('POINT(-23.7204565 -46.6974121)'),
 '04809-070'),
 ('Manifesto Skatepark',
 'Rua Oliveira Alves, 782 - Ipiranga',
  ST_GeomFromText('POINT(-23.585552 -46.603427)'),
 NULL),
 ('Mooca Skatepark',
 'Rua Taquari, 635 - Mooca',
  ST_GeomFromText('POINT(-23.5501507 -46.599522)'),
 '03166-000'),
 ('Morrão Skate Park',
 'Rua Dante, 34 - Cidade Líder',
  ST_GeomFromText('POINT(-23.5524711 -46.5040516)'),
 '03580-030'),
 ('Myrna Skatepark - Chorão',
 'Av. Antonio Carlos Benjamin dos Santos, 3156-3174',
  ST_GeomFromText('POINT(-23.765798 -46.6996503)'),
 '04856-070'),
 ('New Wave Skate Park',
 'Rua José Zappi, 236 - Vila Prudente',
  ST_GeomFromText('POINT(-23.5792449 -46.5871144)'),
 '03128-140');



