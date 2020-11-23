# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Era.create(name: 'Triassic', picture_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0b/Scotese_220_ma.png/360px-Scotese_220_ma.png')  ##consider giving Eras a photo_url that can show the earth as it was then in their component when app loads
Era.create(name: 'Jurassic', picture_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e6/Scotese_170_ma.png/360px-Scotese_170_ma.png')
Era.create(name: 'Cretaceous', picture_url: 'https://upload.wikimedia.org/wikipedia/commons/8/8a/Scotese_105_ma.png')


DinoType.create(name: 'Triassic Herbivore', era_id: 1)
DinoType.create(name: 'Triassic Carnivore', era_id: 1)
DinoType.create(name: 'Triassic Avian', era_id: 1)
DinoType.create(name: 'Triassic Marine', era_id: 1)

DinoType.create(name: 'Jurassic Herbivore', era_id: 2)
DinoType.create(name: 'Jurassic Carnivore', era_id: 2)
DinoType.create(name: 'Jurassic Avian', era_id: 2)
DinoType.create(name: 'Jurassic Marine', era_id: 2)

DinoType.create(name: 'Cretaceous Herbivore', era_id: 3)
DinoType.create(name: 'Cretaceous Carnivore', era_id: 3)
DinoType.create(name: 'Cretaceous Avian', era_id: 3)
DinoType.create(name: 'Cretaceous Marine', era_id: 3)
##sizes are feet, weight are lbs
##triassic seed dinos
Dinosaur.create(name: 'Thecodontosaurus', size: 6, weight: 24, temporal_range: '203.6–201.3 MYA', year_discovered: '1836', picture_url: 'https://upload.wikimedia.org/wikipedia/commons/a/a3/Thecondontosaurus_life_restoration_2018.jpg', summary: 'This dinosaurs hands and feet each had five digits, and the hands were long and rather narrow, with an extended claw on each. This dinosaurs front limbs were much shorter than the legs, and its tail was much longer than the head, neck and body put together.', dino_type_id: 1)
Dinosaur.create(name: 'Arizonasaurus', size: 9, weight: 500, temporal_range: '~243 MYA', year_discovered: 1947, picture_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a9/Ctenosauriscid_model.jpg/1024px-Ctenosauriscid_model.jpg', summary: 'Arizonasaurus had a sail made of tall neural spines. This sail was similar to those of other basal archosaurs, such as other ctenosauriscids like Ctenosauriscus, Lotosaurus, Bromsgroveia, and Hypselorhachis.', dino_type_id: 2)
Dinosaur.create(name: 'Sharovipteryx', size: 1, weight: 1, temporal_range: '~225 MYA', year_discovered: 1965, picture_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b8/Sharovipteryx.jpg/1024px-Sharovipteryx.jpg', summary: 'the reptile could glide with its uropatagium and stabilize its glide by changing the angles of its forelimbs to provide an aeronautic canard or by bending its tail up or down to produce drag.', dino_type_id: 3)
Dinosaur.create(name: 'Mixosaurus', size: 3, weight: 30, temporal_range: '250-240 MYA', year_discovered: 1887, picture_url: 'https://upload.wikimedia.org/wikipedia/commons/6/62/Mixosaurus_BW.jpg', summary: ' It possessed a long tail with a low fin, suggesting it could have been a slow swimmer, but also possessed a dorsal fin for stability in the water. The paddle-like limbs were made up of five toes each, unlike the three toes found in later Ichthyosaurs. Noteworthy, however, is that each toe had more individual bones than is usual in reptiles, and the front limbs were longer than the back limbs, both adaptations typical of later ichthyosaurs', dino_type_id: 4)
##jurassic seed dinos
Dinosaur.create(name: 'Stegosaurus', size: 29, weight: 15432, temporal_range: '155-150 MYA', year_discovered: 1877, picture_url: 'https://upload.wikimedia.org/wikipedia/commons/a/a1/Stego.jpg', summary: 'the various species of Stegosaurus were dwarfed by contemporaries, the giant sauropods. Some form of armor appears to have been necessary, as Stegosaurus species coexisted with large predatory theropod dinosaurs, such as Allosaurus and Ceratosaurus.', dino_type_id: 5)
Dinosaur.create(name: 'Allosaurus', size: 31, weight: 5000, temporal_range: '155-145 MYA', year_discovered: 1877, picture_url: 'https://www.nps.gov/dino/learn/nature/images/allosaurus-jimmadseni.jpg?maxwidth=1200&maxheight=1200&autorotate=false', summary: 'Although Allosaurus did not have saber teeth, Bakker suggested another mode of attack that would have used such neck and jaw adaptations: the short teeth in effect became small serrations on a saw-like cutting edge running the length of the upper jaw, which would have been driven into prey. This type of jaw would permit slashing attacks against much larger prey, with the goal of weakening the victim.', dino_type_id: 6)
Dinosaur.create(name: 'Archaeopteryx', size: 2, weight: 2, temporal_range: '151-148 MYA', year_discovered: 1861, picture_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/33/Archaeopteryx_lithographica_by_durbed.jpg/1024px-Archaeopteryx_lithographica_by_durbed.jpg', summary: 'Archaeopteryx had more in common with other small Mesozoic dinosaurs than with modern birds. In particular, they shared the following features with the dromaeosaurids and troodontids: jaws with sharp teeth, three fingers with claws, a long bony tail, hyperextensible second toes ("killing claw"), feathers (which also suggest warm-bloodedness), and various features of the skeleton.', dino_type_id: 7)
Dinosaur.create(name: 'Plesiosaurus', size: 11, weight: 990, temporal_range: '200-177 MYA', year_discovered: 1824, picture_url: 'https://upload.wikimedia.org/wikipedia/commons/3/37/Plesiosaurus2.jpg', summary: 'It is distinguishable by its small head, long and slender neck, broad turtle-like body, a short tail, and two pairs of large, elongated paddles. It lends its name to the order Plesiosauria, of which it is an early, but fairly typical member. It contains only one species, the type, Plesiosaurus dolichodeirus.', dino_type_id: 8)
##cretaceous seed dinos
Dinosaur.create(name: 'Alamosaurus', size: 98, weight: 176370, temporal_range: '70-66 MYA', year_discovered: 1922, picture_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/81/Alamosaurus-sanjuanensis.jpg/330px-Alamosaurus-sanjuanensis.jpg', summary: "This was one of the largest dinosaurs.", dino_type_id: 9)
Dinosaur.create(name: 'Tyrannosaurus Rex', size: 20, weight: 31000, temporal_range: '70-66 MYA', year_discovered: 1905, picture_url: 'https://ichef.bbci.co.uk/news/800/cpsprodpb/22C9/production/_110850980_059864995-1.jpg', summary: "This was a very hungry dinosaur.", dino_type_id: 10)
Dinosaur.create(name: 'Quetzalcoatlus', size: 30, weight: 100, temporal_range: '70-66 MYA', year_discovered: 1974, picture_url: 'https://static.wikia.nocookie.net/dinosaurs/images/5/58/QuetzalcoatlusReal.jpg/revision/latest/scale-to-width-down/340?cb=20180411192342', summary: "test", dino_type_id: 11)
Dinosaur.create(name: 'Halisaurus', size: 13, weight: 500, temporal_range: '86-65 MYA', year_discovered: 1869, picture_url: 'https://static.wikia.nocookie.net/prehistoric-earth-a-natural-history/images/5/54/157B6E19-6AFA-48AD-ABAD-AFFF1EB82AF6.jpeg/revision/latest/top-crop/width/360/height/450?cb=20181106023251', summary: "Thought to be closely related to snakes, mosasaurs had extremely long tails (up to half their body length) and swallowed their prey whole. Widespread throughout the world, they diversified into an amazing variety of species, from small coastal dwellers like Halisaurus to monstrous open water predators.  I would not want to meet him on the beach.", dino_type_id: 12)
