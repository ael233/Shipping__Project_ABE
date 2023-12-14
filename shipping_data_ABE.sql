USE create_shipping_ABE;

INSERT INTO Port (port_ID, name, city, country) VALUES
('PORT001', 'Port James', 'Paducah', 'USA'),
('PORT002', 'Port Charlotte', 'Punta Gorda', 'USA'),
('PORT003', 'Port Eire', 'Dublin', 'Ireland'),
('PORT004', 'Port Tintagel', 'Camelot', 'England'),
('PORT005', 'Port Lewis', 'Isle of Lewis', 'Scotland');

INSERT INTO Ship (ship_ID, name, displacement, captain_name, crew_count, home_port, year_built) VALUES
('SHP001', 'Jolly Roger', 5000.00, 'Aragorn', 20, 'PORT001', 2001),
('SHP002', 'Queen Royale', 5500.00, 'Bilbo', 22, 'PORT002', 2002),
('SHP003', 'Morose James', 4500.00, 'Celeborn', 18, 'PORT003', 2003),
('SHP004', 'Happy Gerald', 6000.00, 'Deagol', 25, 'PORT004', 2004),
('SHP005', 'Peachy Keen', 5300.00, 'Elendil', 21, 'PORT005', 2005),
('SHP006', 'Roger Roger', 4900.00, 'Faramir', 19, 'PORT001', 2006),
('SHP007', 'Minas Tirith', 4700.00, 'Gollum', 23, 'PORT002', 2007),
('SHP008', 'Helm Deep', 5200.00, 'Haldir', 24, 'PORT003', 2008),
('SHP009', 'Deep Sea Nine', 5600.00, 'Isildur', 26, 'PORT004', 2009),
('SHP010', 'Jarvis Stark', 4800.00, 'Jegolas', 17, 'PORT005', 2010);

INSERT INTO Container (container_ID, height, width, length, weight, ship_ID) VALUES
('CNT001', 2.50, 2.00, 6.00, 5000.00, 'SHP001'),
('CNT002', 2.55, 2.05, 6.05, 5100.00, 'SHP001'),
('CNT003', 2.60, 2.10, 6.10, 5200.00, 'SHP002'),
('CNT004', 2.65, 2.15, 6.15, 5300.00, 'SHP002'),
('CNT005', 2.70, 2.20, 6.20, 5400.00, 'SHP003'),
('CNT006', 2.75, 2.25, 6.25, 5500.00, 'SHP003'),
('CNT007', 2.80, 2.30, 6.30, 5600.00, 'SHP004'),
('CNT008', 2.85, 2.35, 6.35, 5700.00, 'SHP004'),
('CNT009', 2.90, 2.40, 6.40, 5800.00, 'SHP005'),
('CNT010', 2.95, 2.45, 6.45, 5900.00, 'SHP005'),
('CNT011', 3.00, 2.50, 6.50, 6000.00, 'SHP006'),
('CNT012', 3.05, 2.55, 6.55, 6100.00, 'SHP006'),
('CNT013', 3.10, 2.60, 6.60, 6200.00, 'SHP007'),
('CNT014', 3.15, 2.65, 6.65, 6300.00, 'SHP007'),
('CNT015', 3.20, 2.70, 6.70, 6400.00, 'SHP008'),
('CNT016', 3.25, 2.75, 6.75, 6500.00, 'SHP008'),
('CNT017', 3.30, 2.80, 6.80, 6600.00, 'SHP009'),
('CNT018', 3.35, 2.85, 6.85, 6700.00, 'SHP009'),
('CNT019', 3.40, 2.90, 6.90, 6800.00, 'SHP010'),
('CNT020', 3.45, 2.95, 6.95, 6900.00, 'SHP010');
