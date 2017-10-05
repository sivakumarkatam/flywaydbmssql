CREATE TABLE vegetables (
  vegtables_id INT NOT NULL, 
  vegtables_name VARCHAR(30) NOT NULL,
  vegtables_price INT NOT NULL,
  PRIMARY KEY (vegtables_id),  
  UNIQUE (vegtables_name)
)
INSERT INTO vegtables
    (vegtables_id, vegtables_name, vegtables_price)
VALUES 
    (1, "potato", 50),
    (2, "Bringel", 10),
    (3, "Tomatoes", 20),
    (4, "carrot", 20)
GO
