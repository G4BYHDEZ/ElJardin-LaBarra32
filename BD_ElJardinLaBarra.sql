DROP DATABASE IF EXISTS pagina_gabriel;
CREATE DATABASE pagina_gabriel;
USE pagina_gabriel;

CREATE TABLE categorias_jardin (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50)
);

CREATE TABLE menu_jardin (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    id_categoria INT,
    descripcion VARCHAR(255),
    precio INT,
    imagen VARCHAR(50),
    FOREIGN KEY (id_categoria) REFERENCES categorias_jardin(id)
);

CREATE TABLE categorias_barra (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50)
);

CREATE TABLE menu_barra (
	id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    id_categoria INT,
    descripcion VARCHAR(255),
    precio INT,
    imagen VARCHAR(50),
    FOREIGN KEY (id_categoria) REFERENCES categorias_jardin(id)
);

INSERT INTO categorias_jardin(nombre)
VALUES
('Omelettes'),
('Huevos Fritos'),
('Huevos Revueltos'),
('Fit'),
('Enchiladas'),
('Chilaquiles'),
('Burritos'),
('Quesadillas'),
('Hotcakes/Waffles'),
('Mollete'),
('Tacos'),
('Tortas'),
('Especiales'),
('Platillos Variados'),
('Bebidas'),
('Menu Infantil'),
('Extras');

INSERT INTO menu_jardin(nombre,id_categoria,descripcion,precio,imagen)
VALUES
-- CATEGORIA HUEVOS
-- Omelettes
('Omelette Clásico',1,'Relleno de Jamón y Queso.',170, "OmeletteClasico.webp"),
('Omelette con Tocino',1,'Relleno de Tocino y Queso.',170, "OmeletteTocino.webp"),
('Omelette con Camarón',1,'Relleno Camarones salteados en Mantequilla, con Queso Monterrey, Champiñones y Espinacas',195, "OmeletteCamaron.webp"),
('Omelette Sonorense',1,'Relleno de Machaca, Queso Monterrey y Verdura.',195, "OmeletteSonorense.webp"),
('Omelette Ligero',1,'Relleno de Tomate, Espinacas, Champiñones y Queso Monterrey.',165, "OmeletteLigero.webp"),
('Omelette de Birria',1,'Relleno de Birria y Queso Monterrey.',195, "OmeletteBirria.webp"),
('Omelette con Puras Claras',1,'A base de puras Claras, con Espinacas, Queso Panela y acompañado de Fruta de temporada.',180, "OmeletteClaras.webp"),
('Omelette Americano',1,'Relleno de Queso Monterrey, Queso Amarillo y Jamón',175, "OmeletteAmericano.webp"),
('Omelette Arrachero',1,'Relleno de Carne Arrachera, Queso Monterrey y un toque de Aguacate.',210, "OmeletteArrachero.webp"),
('Omelette con Chicharron',1,'Relleno de Chicharrón (rojo o verde), Queso Monterrey y bañado en salsa a su elección,',195, "OmeletteChicharron.webp"),
('Omelette de la Casa',1,'Omelette de su elección junto a una porción de Chilaquiles (verdes o rojos).',260, "OmeletteCasa.webp"),
('Omelette Poblano',1,'Relleno de 1 Chile California con Queso y bañado en Salsa Poblana.',195, "OmelettePoblano.webp"),

-- Fritos
('Huevos Fritos Americanos',2,'2 Huevos estrellados con Tocino o Salchicha frita.',140,"HuevosAmericanos.webp"),
('Huevos Fritos Rancheros',2,'2 Huevos estrellados sobre una Tortilla de Maíz, bañados en Salsa Ranchera y con Aguacate.',140, "HuevosRancheros.webp"),
('Huevos Fritos con Machaca',2,'2 Huevos estrellados con Machaca y Verdura.',210, "HuevosMachaca.webp"),

-- Revueltos
('Huevos Revueltos Sencillos',3,'',155, "HuevosRevSencillos.webp"),
('Huevos Revueltos con Jamón',3,'',155, "HuevosRevJamon.webp"),
('Huevos Revueltos con Tocino',3,'',155, "HuevosRevTocino.webp"),
('Huevos Revueltos con Chorizo',3,'',155, "HuevosRevChorizo.webp"),
('Huevos Revueltos con Salchicha',3,'',155, "HuevosRevSalchicha.webp"),

-- Desayuno Fit
('Desayuno Fit',4,'2 Panes Keto tostados con Guacamole, Coronado con Huevo (puras Claras), Espinacas, Tocino o Panela y Manzana Verde.',195, "DesayunoFit.webp"),


-- CATEGORIA CON TORTILLA
-- Enchiladas
('Enchiladas Tradicionales',5,'Bañados en Salsa de su Elección, rojos, verdes o Jalapeño y rellenas de Queso.',145, "EnchiladasTradicionales.webp"),
('Enchiladas con carne',5,'Rellenas de Pollo o Carne.',175, "EnchiladasCarne.webp"),
('Enchiladas Suizas de Queso',5,'',155, "EnchiladasSuizasQueso.webp"),
('Enchiladas Suizas de Carne',5,'',185, "EnchiladasSuizasCarne.webp"),
('Enchiladas con Camarón',5,'',190, "EnchiladasCamaron.webp"),

-- Extras
('Enchilada Extra de Queso',5,'',50, "EnchiladaExtraQueso.webp"),
('Enchilada Extra de Carne, Pollo, Suiza o Camaron',5,'',70, "EnchiladaExtraCarne.webp"),

-- Chilaquiles
('Chilaquiles Tradicionales',6,'Bañados en Salsa de su Elección: Roja, Verde, Jalapeño o Poblana.',135, "ChilaquilesTradicionales.webp"),
('Chilaquiles Divorciados',6,'Bañados con Salsa Roja, Verde, Jalapeño o Poblana.',135, "ChilaquilesDivorciados.webp"),
('Chilaquiles a la mexicana',6,'En Salsa Roja, Verde o Poblana, con Carne Arrachera y acompañado con 1 Huevo al gusto.',245, "ChilaquilesMexicana.webp"),
('Chilaquiles Fries',6,'Bañados en Salsa Jalapeño (muy picosa), con Tocino, Guacamole, Queso Monterrey y Carne Arrachera.',245, "ChilaquilesFries.webp"),
('Birriaquiles',6,'Coronados con un toque de Cebolla, Cilantos, Birria y Crema.',195, "Birriaquiles.webp"),

-- Burritos
('Burritos de Chicharron',7,'En Salsa Roja o Verde.',125, "BurritosChicharron.webp"),
('Burritos de Bistec Ranchero',7,'',125, "BurritosBistecRanchero.webp"),
('Burritos de Papas con Chorizo',7,'',100, "BurritosPapasChorizo.webp"),
('Burritos de Huevo',7,'',100, "BurritosHuevo.webp"),
('Burritos de Frijol',7,'',100, "BurritosFrijol.webp"),

-- Quesadillas
('Quesadilla Clásica',8,'2 Quesadillas con Queso, de Tortilla de Harina o Maiz.',100, "QuesadillaClasica.webp"),
('Quesadilla de Camarón',8,'2 Quesadillas con Camarón salteado, Morrón, Cebolla y Queso.',180, "QuesadillaCamaron.webp"),
('Quesadilla de Birria',8,'2 Quesadillas con Queso y Birria, de Tortilla de Harina o Maiz.',180, "QuesadillaBirria.webp"),
('Quesadilla Arrachera',8,'2 Quesadillas con Queso , Arrachera, Guacamole y acompañadas con Frijol.',180, "QuesadillaArrachera.webp"),


-- CATEGORIA HOTCAKES/WAFFLES
('Hotcake/Waffle Clásico',9,'Hotcakes o Waffles con Mantequilla.',130, "HotcakeClasico.webp"),
('Hotcake/Waffle con Nutella',9,'Hotcakes o Waffles con Nutella y Platano.',130, "HotcakeNutella.webp"),
('Hotcake/Waffle con Fresas y Crema',9,'Hotcakes o Waffles con Fresas y Crema batida.',165,"HotcakeFresasCrema.webp"),
('Hotcake/Waffle Americano',9,'Hotcakes o Waffles con Mantequilla, Tocino, 1 Huevo al gusto, una Porcion de Fruta y Nutella o Crema.',190,"HotcakeAmericano.webp"),

-- Molletes
('Mollete Clásico',10,'Con Frijol y Queso.',95,"MolleteClasico.webp"),
('Mollete de la Casa',10,'Con Frijol, Chile Jalapeño y Tocino.',125, "MolleteCasa.webp"),


-- CATEGORIA CARNES
-- Tacos
('Tacos de Birria',11,'',135,"TacosBirria.webp"),
('Tacos de Arrachera',11,'',180,"TacosArrachera.webp"),

-- Tortas
('Torta de Arrachera',12,'Carne Arrachera, con Queso Blanco, Aguacate, Verdura y Papas Fritas.',180,"TortaArrachera.webp"),
('Torta Cubana',12,'Cochinita Pibil, Milanesa, Queso Amarillo y Blanco, Aguacate, Lechuga y Papas Fritas.',180,"TortaCubana.webp"),

-- Especiales
('Ribeye',13,'2 Guarniciones a elegir, Puré de Papa, Papas Fritas, Ensalada y Guacámole.',345,"Ribeye.webp"),
('Arrachera',13,'Frijol, Guacamole, 1 Chile Relleno de Queso Monterrey.',290,"Arrachera.webp"),
('Tampiqueña',13,'Carne Arrachera, Frijol, Quesadilla Sencilla, Guacamole y 1 Chile Relleno de Queso Monterrey.',315,"Tampiquena.webp"),
('Bistec Ranchero',13,'Con Frijoles y Arroz.',180,"BistecRanchero.webp"),
('Chicharrón Prensado',13,'En Salsa Roja o Verde, Frijoles y Papas.',345,"ChicharronPrensado.webp"),


-- CATEGORIA PLATILLOS VARIADOS
('Pescado Empanizado',14,'Con Guacamole, Ensalada y Papas.',170, "PescadoEmpanizado.webp"),
('Milanesa de Res',14,'Con Papas Fritas y Frijoles.',180, "MilanesaRes.webp"),
('Milanesa de Pollo',14,'Con Papas Fritas y Frijoles.',165,"MilanesaPollo.webp"),
('Club Sandwich',14,'Con Jamón, Queso Amarillo y Blanco, Tocino, Pechuga y Papas Fritas.',180,"ClubSandwich.webp"),
('Chuletas de Puerco',14,'Con Frijoles, Papas y Guacamole.',160,"ChuletasPuerco.webp"),
('Pechuga a la Plancha',14,'Con Ensalada y Arroz.',150,"PechugaPlancha.webp"),
('Chile Relleno',14,'Con Arroz y Frijoles.',165,"ChileRelleno.webp"),
('2 Chiles Rellenos',14,'Con Arroz y Frijoles.',210,"2ChilesRellenos.webp"),
('Pozole',14,'',190,"Pozole.webp"),
('Menudo',14,'',190,"Menudo.webp"),
('Gallina Pinta',14,'',190,"GallinaPinta.webp"),
('Camarones Empanizados',14,'Con Ensalada y Arroz.',245,"CamaronesEmpanizados.webp"),
('Camarones Parmesano',14,'Con Ensalada, Puré de Papa y Pan.',245,"CamaronesParmesano.webp"),
('Ensalada Caesar',14,'',145,"EnsaladaCaesar.webp"),
('Lasagna',14,'Con Puré de Papa, Pan y Ensalada.',195,"Lasagna.webp"),
('Postre del Día',14,'Pregunte por disponibilidad.',85,"PostreDia.webp"),

-- CATEGORIA BEBIDAS
-- Frias
('Licuado',15,'Plátano / Fresa.',70,"Licuado.webp"),
('Malteada',15,'Oreo / Vainilla / Chocolate / Fresa.',80,"Malteada.webp"),
('Chocomilk',15,'',50,"Chocomilk.webp"),
('Vaso de Leche',15,'',45,"VasoLeche.webp"),
('Jugo de Naranja',15,'',80,"JugoNaranja.webp"),
('Agua',15,'Melón / Papaya / Piña / Fresa / Manzana.',70,"Agua.webp"),
('Jugo de Frutas',15,'Fresa / Plátano / Papaya / Naranja.',80,"JugoFrutas.webp"),
('Agua de Jamaica',15,'',40,"AguaJamaica.webp"),
('Agua de Pepino',15,'',60,"AguaPepino.webp"),
('Jugo Verde',15,'',75,"JugoVerde.webp"),
('Jugo Verde Matcha',15,'',80,"JugoVerdeMatcha.webp"),
('Limonada',15,'Regular / Rosa.',75,"Limonada.webp"),
('Limonada Mineral',15,'Regular / Rosa.',80,"LimonadaMineral.webp"),
('Naranjada',15,'',75,"Naranjada.webp"),
('Naranjada Mineral',15,'',75,"NaranjadaMineral.webp"),
('Frappé / Cafe Helado',15,'',70,"Frappe.webp"),
('Té de Jazmín',15,'',40,"TeJazmin.webp"),

-- Calientes
('Café Americano',15,'Orgánico (con Refill)',55,"CafeAmericano.webp"),
('Té Caliente',15,'',50,"TeCaliente.webp"),
('Chocolate Caliente',15,'',50,"ChocolateCaliente.webp"),

-- CATEGORIA KIDS MENU
('Orden Infantil',16,'Pidele a tus papi que elijan 3 porciones para tí: Huevito al gusto / 2 Salchi Pulpos / 2 Hot Cakes / Fruta / Papas Fritas / 6 Nuggets de Pollo.',95,"OrdenInfantil.webp"),
('Orden de Cereal, Leche y Fruta',16,'',95,"OrdenCereal.webp"),

-- CATEGORIA EXTRA
('Orden de Papas Fritas',17,'',80,"OrdenPapasFritas.webp"),
('Tocino Extra',17,'',35,"TocinoExtra.webp"),
('Orden de Totopos',17,'',25,"OrdenTotopos.webp"),
('1/2 Orden de Guacamole',17,'',95,"MediaOrdenGuacamole.webp"),
('Porción de Arrachera',17,'',80,"PorcionArrachera.webp"),
('Huevo',17,'',35,"Huevo.webp"),
('Chicharrón',17,'',70,"Chicharron.webp"),
('Birria',17,'',70,"Birria.webp"),
('Bistec',17,'',70,"Bistec.webp"),
('Hot Cake / Waffle',17,'',50,"HotcakeWaffle.webp"),
('Croissant, Muffin o Galleta',17,'',25,"CroissantMuffinGalleta.webp");

INSERT INTO categorias_barra(nombre)
VALUES
('Boneless & Wings'),
('Nachos'),
('Extras'),
('Burgers'),
('Pizzas'),
('Sushi'),
('Teriyaki'),
('Ensalada'),
('Combos'),
('Charolas'),
('Costillas BBQ'),
('Bebidas'),
('Variedad');

INSERT INTO menu_barra(nombre,id_categoria,descripcion,precio,imagen)
VALUES
-- CATEGORIA BONELESS & WINGS
-- Boneless y Alitas
('Orden de Boneless',1,'Salsa Buffalo / Buffalo Hot / BBQ / BBQ Hot / Mango Habanero / Ajo Parmesano / Queso Jalapeño / Machca Spicy. Incluye una orden de papás fritas, aderezo ranch y zanahoria.',180, "Boneless.webp"),
('Orden de Alitas Personal',1,'Salsa Buffalo / Buffalo Hot / BBQ / BBQ Hot / Mango Habanero / Ajo Parmesano / Queso Jalapeño / Machca Spicy. Incluye una orden de papás fritas, aderezo ranch y zanahoria.',200, "AlitasPersonal.webp"),
('Orden de Alitas Dúo',1,'Salsa Buffalo / Buffalo Hot / BBQ / BBQ Hot / Mango Habanero / Ajo Parmesano / Queso Jalapeño / Machca Spicy. Incluye una orden de papás fritas, aderezo ranch y zanahoria.',380, "AlitasPersonal.webp"),

-- Nachos
('Nachos Carnívoros',2,'Nachos con Carne, Salsa Bandera, Guacamole, Tocino, Chile Jalapeño y Queso Amarillo',240, "NachosCarnivoros.webp"),

-- Extras
('Aros de Cebolla',3,'',100, "ArosCebolla.webp"),
('Dedos de Queso',3,'',120, "DedosQueso.webp"),
('Papas Fritas',3,'',80, "OrdenPapasFritas.webp"),
('Aderezo',3,'',15, "Aderezo.webp"),
('Tampíco',3,'',25, "Tampico.webp"),

-- CATEGORIA BURGERS
-- Burgers
('Burger Hawaiiana',4,'Con Carne, Aderezo de la casa, Piña Asada, Queso Blanco, Lechuga, Cebolla y Tomate.',180, "HamburguesaHawaiiana.webp"),
('Burger de Carne',4,'Con Carne, Tocino, Aderezo de la casa, Queso Amarillo, Lechuga, Cebolla y Tomate.',140, "HamburguesaCarne.webp"),
('Burger con Doble Carne',4,'Con Carne, Tocino, Aderezo de la casa, Queso Amarillo, Lechuga, Cebolla y Tomate.',190, "HamburguesaDoble.webp"),
('Burger de Pollo',4,'Con Pollo (natural o bañado en la salsa de su elección), Aderezo de la casa, Tocino, Queso Blanco y Lechuga.',140, "HamburguesaPollo.webp"),
('Burger Wester 32',4,'Con Carne, Aros de Cebolla, BBQ, Tocino, Aderezo de la casa, Queso Amarillo, Lechuga, Cebolla y Tomate.',170, "HamburguesaWestern.webp"),
('Burger Guacamole',4,'Con Carne o Pechuga de Pollo, Guacamole, Adarezo de la casa, Tocino, Queso Amarillo, Lechuga, Cebolla y Tomate.',170, "HamburguesaGuacamole.webp"),
('Burger Combinala',4,'Con Carne, Pechuga de Pollo, Tocino, Queso Blanco, Aderezo de la casa, Cebolla y Tomate.',170, "HamburguesaCombinala.webp"),
('Burger Jalapeño',4,'Con Carne o Pechuga de Pollo, Salsa de Chile Jalapeño, Tocino, Aderezo de la casa, Queso Amarillo, Lechuga, Cebolla y Tomate.',170, "HamburguesaJalapeno.webp"),

-- Pizzas
('Pizza de Peperoni',5,'Con Pepperoni, Queso y Salsa de tomate. Personal: $75 Chica: $95 Mediana: $125 Grande: $170 Familiar: $200',75, "PizzaPepperoni.webp"),
('Pizza de Boneless',5,'Con Pepperoni, Boneless y aderezo Ranch. Personal: $120 Chica: $150 Mediana: $195 Grande: $295 Familiar: $320',120, "PizzaBoneless.webp"),
('Pizza Suprema',5,'Con Pepperoni, Salami, Aceituna Negra, Champiños y Chile Morrón. Personal: $85 Chica: $100 Mediana: $135 Grande: $190 Familiar: $245',85, "PizzaSuprema.webp"),
('Pizza Hawaiiana',5,'Con Jamón, Piña, Chile Morrón, Queso y Salsa de Tomate. Personal: $85 Chica: $100 Mediana: $135 Grande: $190 Familiar: $245',85, "PizzaHawaiiana.webp"),
('Pizza Española',5,'Con Pepperoni, Carne Molida, Chile Jalapeño y Champiñones. Personal: $85 Chica: $100 Mediana: $135 Grande: $190 Familiar: $245',85, "PizzaEspanola.webp"),
('Pizza Vegetariana',5,'Con Piña, Chile Morrón, Champiñones, Aceituna Negra y Cebolla. Personal: $85 Chica: $100 Mediana: $135 Grande: $190 Familiar: $245',85, "PizzaVegetariana.webp"),
('Pizza Mexicana',5,'Con Chorizo, Carne Molida, Chile Jalapeño y Cebolla. Personal: $85 Chica: $100 Mediana: $135 Grande: $190 Familiar: $245',85, "PizzaMexicana.webp"),
('Pizza Ranchera',5,'Con Jamón, Chorizo, Tocino y Chile Jalapeño. Personal: $85 Chica: $100 Mediana: $135 Grande: $190 Familiar: $245',85, "PizzaRanchera.webp"),
('Pizza de Camarón',5,'(orilla rellena de queso a elegir) Con Camarón, Tocino, Salami, Pimientos, Champiñon, Aceituna Negra y Cebolla Morada. Personal: $130 Chica: $160 Mediana: $205 Grande: $295 Familiar: $330',130, "PizzaCamaron.webp"),

-- CATEGORIA SUSHI
-- Sushi
('Sushi Chicken',6,'Relleno de Aguacate, Queso Crema, Alga y Pollo. (Agregar Tampico x $15)',115, "SushiChicken.webp"),
('Sushi California',6,'Relleno de Aguacate, Queso Crema, Alga, Camarón y Surimi. (Agregar Tampico x $15)',115, "SushiCalifornia.webp"),
('Sushi Cielo, Mar y Tierra',6,'Relleno de Aguacate, Queso Crema, Alga, Camarón, Pollo y Carne. (Agregar Tampico x $15)',135, "SushiCieloMarTierra.webp"),
('Sushi Carnívoro',6,'Relleno de Aguacate, Queso Monterrey, Carne, Tocino y Alga. (Agregar Tampico x $15)',135, "SushiCarnivoro.webp"),
('Sushi Tres Quesos',6,'Relleno de Aguacate, Queso Crema, Cubierta de Queso Monterrey y Chedar, Surimi, Camarón, Alga, Surimi Empanizado. (Agregar Tampico x $15)',200, "SushiTresQuesos.webp"),
('Sushi La Patrona',6,'Relleno de Aguacate, Queso Crema, Camarón, Arrachera, Chile Jalapeño, Cubiera de Queso Monterrey, Alga, Tampico. (Agregar Tampico x $15)',200, "SushiLaPatrona.webp"),
('Sushi Barra 32',6,'Relleno de Boneless, Queso Crema, Queso Monterrey, Bañado de Queso Cheddar y Trozos de Boneless. (Agregar Tampico x $15)',200, "SushiBarra32.webp"),

-- Teriyaki
('Teriyaki de Pollo',7,'Teriyaki de Pollo en cama de arroz, acompañado con ensalada y chiles en salsa de soya y chipotle (Prueba con nuestra salsa especial: Macha Spicy).',130, "TeriyakiPollo.webp"),
('Teriyaki de Camarón',7,'Teriyaki de Camarón en cama de arroz, acompañado con ensalada y chiles en salsa de soya y chipotle (Prueba con nuestra salsa especial: Macha Spicy).',160, "TeriyakiCamaron.webp"),
('Teriyaki Mixto',7,'Teriyaki Mixto en cama de arroz, acompañado con ensalada y chiles en salsa de soya y chipotle (Prueba con nuestra salsa especial: Macha Spicy).',160, "TeriyakiMixto.webp"),

-- Ensalada
('Ensalada Caesar',8,'Con Pechuga a la PLancha, Lechuga, Crutones, Espinaca y Ranch.',145, "EnsaladaCaesar.webp"),

-- CATEGORIA COMBOS
-- Combos
('Pizza + Boneless',9,'1 Pizza de Pepperoni y 1/2 Orden de Boneless.',180, "ComboPizzaBoneless.webp"),
('Burger + Boneless',9,'1 Hamburguesa de Carne o Pechuga de Pollo, 1/2 Orden de Boneless y Papas Fritas.',200, "ComboBurgerBoneless.webp"),
('Boneless + Fries',9,'Boneless (salsa a elegir), Tocino, Papas Fritas y Queso Cheddar.',170, "ComboBonelessFries.webp"),
('Asada + Fries',9,'Carne asada, Salsa Bandera, Papas Fritas, Tocino, Guacamole, Queso para Nachos.',200, "ComboAsadaFries.webp"),
('Sushi + Boneless',9,'1 Rollo a elegir (Chicken, California, Carnivoro, Cielo, mar y tierra) y 1/2 Orden de Boneless.',220, "ComboSushiBoneless.webp"),
('Sushi + Teriyaki',9,'1 Rollo a elegir (Chicken, California, Carnivoro, Cielo, mar y tierra) y 1 Teriyaki de Pollo.',180, "ComboSushiTeriyaki.webp"),
('Sushi Especial + Boneless',9,'1 Rollo a elegir (3 Quesos, La Patrona o Barra 32), 1/2 Orden de Boneless y Papas Fritas.',250, "ComboSushiEspBoneless.webp"),
('Lasagna + Boneless',9,'1/2 Lasagna y 1/2 Orden de Boneless.',190, "ComboLasagnaBoneless.webp"),
('Lasagna + Boneless + Pizza',9,'1/2 Lasagna, Pizza Personal y Boneless.',295, "ComboLasagnaBonelessPizza.webp"),

-- Charolas
('Arma la Charola a tu gusto con 3 opciones a elegir',10,'Pizza Mediana Pepperoni. Hamburguesa. Alitas. Boneless. Teriyaki. Sushi. (Todas las charolas incluyen Papas Fritas, Dedos de Queso y Aros de Cebolla',600, "Charola.webp"),

-- CATEGORIA COSTILLAS
-- Costillas BBQ
('Costillas BBQ Personal',11,'3pz Acompañadas con Papas Fritas, Elote y Aros de Cebolla.',240, "CostillasBBQPersonal.webp"),
('Costillas BBQ Duo',11,'6pz Acompañadas con Papas Fritas, Elote y Aros de Cebolla.',240, "CostillasBBQDuo.webp"),

-- Bebidas
('Refresco',12,'',40, "Refresco.webp"),
('Té de Jazmín',12,'',40, "TeJazmin.webp"),
('Jamaica',12,'',40, "AguaJamaica.webp"),
('Limonada',12,'',60, "Limonada.webp"),
('Limonada Mineral',12,'',70, "LimonadaMineral.webp"),
('Limonada Rosa',12,'',60, "LimonadaRosa.webp"),
('Naranjada',12,'',60, "Naranjada.webp"),
('Naranjada Mineral',12,'',70, "NaranjadaMineral.webp"),
('Agua Embotellada',12,'',30, "AguaEmbotellada.webp"),
('Malteada',12,'',80, "Malteada.webp"),
('Agua de Pepino',12,'',60, "AguaPepino.webp"),
('Jugo de Frutas',12,'',70, "JugoFrutas.webp"),
('Frappé o Café Helado',12,'',70, "Frappe.webp"),

-- Variedad
('Milanesa de Res',13,'Con Papas Fritas y Frijoles.',180, "MilanesaRes.webp"),
('Milanesa de Pollo',13,'Con Papas Fritas y Frijoles.',165, "MilanesaPollo.webp"),
('Club Sandwich',13,'Con Jamon, Queso Amarillo y Blanco, Tocino, Pechuga y Papas Fritas.',180, "ClubSandwich.webp"),
('Chuletas de Puerco',13,'Con Papas Fritas, Frijoles y Guacamole.',160, "ChuletasPuerco.webp"),
('Pechuga a la Plancha',13,'Con Ensalada y Arroz.',150, "PechugaPlancha.webp"),
('Chicharrón Prensado',13,'En Salsa Roja o Verde.',180, "ChicharronPrensado.webp"),
('Lasagna',13,'Con Puré de Papa, Ensalada y Pan.',195, "Lasagna.webp"),
('Chiles Rellenos',13,'2 Piezas, Arroz y Frijoles.',210, "2ChilesRellenos.webp"),
('Chile Relleno',13,'1 Pieza, Arroz y Frijoles.',165, "ChileRelleno.webp"),
('Pozole',13,'',190, "Pozole.webp"),
('Menudo',13,'',190, "Menudo.webp"),
('Gallina Pinta',13,'',190, "GallinaPinta.webp"),
('Tampiqueña Arrachera',13,'Arrrachera con Frijoles, Quesadilla Sencilla, Guacamole, 1 Chile Relleno de Queso',315, "Tampiquena.webp"),
('Rib Eye',13,'2 Guarniciones a elegir con Puré de Papa, Papas Fritas, Ensalada y Guacamole.',340, "Ribeye.webp"),
('Arrachera',13,'Con Frijoles, Guacamole y 1 Chile Relleno de Queso.',290, "Arrachera.webp"),
('Bistec Ranchero',13,'Con Frijoles y Papas.',180, "BistecRanchero.webp"),
('Torta Arrachera',13,'Con Carne Arrachera, Queso Blanco, Aguacate y Verdura.',180, "TortaArrachera.webp"),
('Torta Cubana',13,'Con Cochinita Pibil, Milanesa, Queso Amarillo, Queso Blanco, Aguacate, Lechuga y Papas Fritas.',180, "TortaCubana.webp");

DELIMITER $$

CREATE PROCEDURE sp_obtener_menu_jardin()
BEGIN
    SELECT
        m.id,
        m.nombre,
        c.id AS categoria_id,
        c.nombre AS categoria,
        m.descripcion,
        m.precio,
        m.imagen
    FROM menu_jardin m
    INNER JOIN categorias_jardin c
        ON m.id_categoria = c.id
    ORDER BY m.id ASC;
END$$

DELIMITER ;

DELIMITER $$

CREATE PROCEDURE sp_obtener_menu_barra()
BEGIN
    SELECT
        m.id,
        m.nombre,
        c.id AS categoria_id,
        c.nombre AS categoria,
        m.descripcion,
        m.precio,
        m.imagen
    FROM menu_barra m
    INNER JOIN categorias_barra c
        ON m.id_categoria = c.id
    ORDER BY m.id ASC;
END$$

DELIMITER ;

DELIMITER $$

CREATE PROCEDURE sp_obtener_menu_categoria_jardin(
    IN p_categoria INT
)
BEGIN
    SELECT
        m.id,
        m.nombre,
        c.nombre AS categoria,
        m.descripcion,
        m.precio,
        m.imagen
    FROM menu_jardin m
    INNER JOIN categorias_jardin c
        ON m.id_categoria = c.id
    WHERE m.id_categoria = p_categoria
    ORDER BY m.id ASC;
END$$

DELIMITER ;

DELIMITER $$
CREATE PROCEDURE sp_obtener_menu_categoria_barra(
    IN p_categoria INT
)
BEGIN
    SELECT
        m.id,
        m.nombre,
        c.nombre AS categoria,
        m.descripcion,
        m.precio,
        m.imagen
    FROM menu_barra m
    INNER JOIN categorias_jardin c
        ON m.id_categoria = c.id
    WHERE m.id_categoria = p_categoria
    ORDER BY m.id ASC;
END$$

DELIMITER ;

DELIMITER $$

CREATE PROCEDURE sp_obtener_categorias_jardin()
BEGIN
    SELECT *
    FROM categorias_jardin
    ORDER BY nombre;
END$$

DELIMITER ;

DELIMITER $$

CREATE PROCEDURE sp_obtener_categorias_barra()
BEGIN
    SELECT *
    FROM categorias_barra
    ORDER BY nombre;
END$$

DELIMITER ;