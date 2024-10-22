INSERT INTO petEvent (petname, eventdate, eventtype, remark)
VALUES
    ('Fluffy', '2020-10-15', 'vet', 'antibiotics'),
    ('Hammy', '2020-10-15', 'vet', 'antibiotics'),
    ('Claws', '1997-08-03', 'injury', 'broke a rib');

INSERT INTO petPet (petname, owner, species, gender, birth)
VALUES
    ('Hammy', 'Diane', 'hamster', 'M', '2010-10-30');


-- UPDATE --
UPDATE petEvent
SET remark = 'Had 5 kittens (3 female, 2 male)'
WHERE petname = 'Fluffy' AND eventtype = 'vet';

UPDATE petPet
SET death = '2020-09-01'
WHERE petname = 'Puffball';

DELETE FROM petPet
WHERE owner = 'Harold';
