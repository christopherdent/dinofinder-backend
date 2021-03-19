Models
-Era (name:  Triassic, Jurassic, Cretaceous) has_many DinoTypes has_many DinoTypes
-DinoType (Herbivore, Carnivore, Marine, Avian ) belongs_to era, has_many dinosaurs
-Dinosaur belongs_to DinoType
--Attributes for Dinosaur are
name (string)
size (integer)  --will be size in meters
weight (integer) --kilos 
temporal_range (string)
discovered date (datetime)
picture, (string
fun fact (string)
--Dinosaurs can be created, read, updated, and deleted
