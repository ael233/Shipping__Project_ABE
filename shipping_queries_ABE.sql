USE create_shipping_ABE;

#Queries with a subquery
SELECT ship_ID, name, displacement
FROM Ship
WHERE displacement > (SELECT AVG(displacement) FROM Ship);

SELECT ship_ID, name, captain_name, crew_count
FROM Ship
WHERE crew_count > (SELECT AVG(crew_count) FROM Ship);

#Aggregate query with grouping
SELECT ship.ship_ID, ship.name AS ShipName, SUM(Container.weight) AS TotalContainerWeight
FROM Ship
JOIN Container ON Ship.ship_ID = Container.ship_ID
GROUP BY Ship.ship_ID, Ship.name
ORDER BY TotalContainerWeight DESC;

#Query that calculates the volume of a container or a group of containers
SELECT container_ID, ship_ID, (length*width*height) AS Volume
FROM Container
WHERE (length*width*height) > (SELECT AVG(length*width*height) FROM Container);

#Multi-table joins
SELECT Container.container_ID, Ship.name AS ShipName, Container.height, Container.width, Container.length, Container.weight
FROM Container
JOIN Ship ON Container.ship_ID = Ship.ship_ID;

SELECT Container.container_ID, Ship.name AS ShipName, Port.name AS PortName
FROM Container
JOIN Ship ON Container.ship_ID = Ship.ship_ID
JOIN Port ON Ship.home_port = Port.port_ID
ORDER BY container_ID;

SELECT Ship.name, Ship.year_built AS YearCommissioned, Port.name AS PortName, Port.country
FROM Ship
Join Port ON Ship.home_port = Port.port_ID
ORDER BY Ship.year_built;

SELECT Ship.ship_ID, Ship.displacement, SUM(Container.weight)
FROM Ship
Join Container ON Ship.ship_ID = Container.ship_ID
GROUP BY Ship.ship_ID
ORDER BY Ship.displacement;

SELECT Ship.name AS ShipName, Port.name AS HomePort, COUNT(Container.container_ID) AS NumberOfContainers
FROM Ship
JOIN Port ON Ship.home_port = Port.port_ID
LEFT JOIN Container ON Ship.ship_ID = Container.ship_ID
GROUP BY Ship.ship_ID, Ship.name, Port.name
ORDER BY NumberOfContainers DESC;

SELECT Port.name AS PortName, AVG(Container.weight) AS AvgContainerWeight
FROM Port
JOIN Ship ON Port.port_ID = Ship.home_port
JOIN Container ON Ship.ship_ID = Container.ship_ID
GROUP BY Port.port_ID, Port.name
ORDER BY AvgContainerWeight DESC;

