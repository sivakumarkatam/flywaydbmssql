CREATE TABLE test_user (
name VARCHAR(25) NOT NULL,
PRIMARY KEY(name)
)
CREATE TABLE ingredients (
  ingredient_id INT NOT NULL, 
  ingredient_name VARCHAR(30) NOT NULL,
  ingredient_price INT NOT NULL,
  PRIMARY KEY (ingredient_id),  
  UNIQUE (ingredient_name)
)
GO
