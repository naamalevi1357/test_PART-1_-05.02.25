part B

-- 1


CREATE TABLE Practical_TV_information(
ID INTEGER  NOT NULL PRIMARY KEY AUTOINCREMENT,
brand TEXT NOT NULL,
price INT NOT NULL,
quantity_stock INT NOT NULL)


-- CHAR(50)



CREATE TABLE General_TV_information(
number_catalog INT NOT NULL,
model TEXT UNIQUE NOT NULL,
size_screen INT NOT NULL,
year_release TEXT  NOT NULL,
resolution TEXT NOT NULL CHECK(resolution in ('4K', '8K', 'Full_HD')),
tv_smart BOOLEAN DEFAULT FALSE,
Os TEXT DEFAULT NULL,
panel_type TEXT NOT NULL CHECK(panel_type in ('OLED', 'QLED', 'LED')),
ID INTEGER NOT NULL , FOREIGN KEY (ID)REFERENCES Practical_TV_information(ID))

-- 2

INSERT INTO Practical_TV_information (brand, price, quantity_stock) VALUES
('Samsung', 5000, 10),
('LG', 3000, 5),
('Sony', 1000, 2);


INSERT INTO General_TV_information (number_catalog, model, size_screen, year_release, resolution,tv_smart,Os,panel_type,ID) VALUES
(1700, '78QM10',75, 2014,'4K',TRUE,'Android','OLED',1),
(18050, '79QS17',90, 2014,'8K',TRUE,'WebOS','LED',2),
(1248, '700I85',50, 2014,'Full_HD',False,'NULL','QLED',3);

