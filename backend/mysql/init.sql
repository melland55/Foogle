USE foogle;

DROP TABLE IF EXISTS ingredients;
DROP TABLE IF EXISTS foods;
DROP TABLE IF EXISTS foodGroups;
DROP TABLE IF EXISTS recipes;
DROP TABLE IF EXISTS savedFoods;
DROP TABLE IF EXISTS users;

CREATE TABLE IF NOT EXISTS ingredients (
ingredient varchar,
numberOfServings int,
recipeId int
);

CREATE TABLE IF NOT EXISTS foods (
foodId int PRIMARY KEY AUTO_INCREMENT,
foodName varchar(500),
servingPortion int,
foodGroupId int,
totalCalories int,
totalFat int,
transFat int,
saturatedFat int,
cholesterol int,
sodium int,
totalCarbohydrate int,
sugars int,
protein int
);

CREATE TABLE IF NOT EXISTS foodGroups (
id int PRIMARY KEY AUTO_INCREMENT,
foodGroup varchar(50)
);

CREATE TABLE IF NOT EXISTS recipes (
recipeId int PRIMARY KEY AUTO_INCREMENT,
recipeName varchar(200),
userId int
);

CREATE TABLE IF NOT EXISTS savedFoods (
userId int,
foodId int
);

CREATE TABLE IF NOT EXISTS users (
userId int PRIMARY KEY AUTO_INCREMENT,
firstName varchar(100),
lastName varchar(100),
emailAddress varchar(100),
username varchar(100),
password varchar(100),
isAdmin boolean,
description varchar(500)
);


INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('1', 'Lemons', '100', '3', '29', '0.3', '0', '0.039', '0', '2', '9.32', '2.5', '1.1');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('2', 'Lemon Juice Raw', '100', '3', '22', '0.24', '0', '0.04', '0', '1', '6.9', '2.52', '0.35');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('3', 'Lemon Juice From Concentrate Canned Or Bottled', '100', '3', '17', '0.07', '0', '0.027', '0', '24', '5.62', '1.53', '0.45');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('4', 'Lemon Peel Raw', '100', '3', '47', '0.3', '0', '0.039', '0', '6', '16', '4.17', '1.5');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('5', 'Prickly Pears', '100', '3', '41', '0.51', '0', '0.067', '0', '5', '9.57', '0', '0.73');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('6', 'Plums Dried (Prunes) Stewed Without Added Sugar', '100', '3', '107', '0.16', '0', '0.01', '0', '1', '28.08', '24.98', '0.96');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('7', 'Plums Dried (Prunes) Stewed With Added Sugar', '100', '3', '124', '0.22', '0', '0.017', '0', '2', '32.88', '0', '1.09');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('8', 'Shredded Coconut Meat (Sweetened)', '100', '3', '71', '0.03', '0', '0.003', '0', '4', '17.45', '16.45', '0.61');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('9', 'Pummelo', '100', '3', '38', '0.04', '0', '0.003', '0', '1', '9.62', '0', '0.76');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('10', 'Raspberries', '100', '3', '52', '0.65', '0', '0.019', '0', '1', '11.94', '4.42', '1.2');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('11', 'Raspberries Canned Red Heavy Syrup Pack Solids And Liquids', '100', '3', '91', '0.12', '0', '0.005', '0', '3', '23.36', '20.06', '0.83');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('12', 'Raspberries Frozen Red Sweetened', '100', '3', '103', '0.16', '0', '0.005', '0', '1', '26.16', '21.76', '0.7');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('13', 'Rhubarb', '100', '3', '21', '0.2', '0', '0.053', '0', '4', '4.54', '1.1', '0.9');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('14', 'Sapodilla', '100', '3', '83', '1.1', '0', '0.194', '0', '12', '19.96', '0', '0.44');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('15', 'Mamey Sapote', '100', '3', '124', '0.46', '0', '0.169', '0', '7', '32.1', '20.14', '1.45');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('16', 'Soursop', '100', '3', '66', '0.3', '0', '0.051', '0', '14', '16.84', '13.54', '1');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('17', 'Strawberries', '100', '3', '32', '0.3', '0', '0.015', '0', '1', '7.68', '4.89', '0.67');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('18', 'Tamarinds', '100', '3', '239', '0.6', '0', '0.272', '0', '28', '62.5', '38.8', '2.8');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('19', 'Fruit Salad (Pineapple And Papaya And Banana And Guava) Tropical Canned Heavy Syrup Solids And Liquids', '100', '3', '86', '0.1', '0', '0.019', '0', '2', '22.36', '0', '0.41');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('20', 'Watermelon', '100', '3', '30', '0.15', '0', '0.016', '0', '1', '7.55', '6.2', '0.61');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('21', 'Maraschino Cherries (Canned)', '100', '3', '165', '0.21', '0', '0.039', '0', '4', '41.97', '38.77', '0.22');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('22', 'Pineapple Canned Juice Pack Drained', '100', '3', '60', '0.11', '0', '0.008', '0', '1', '15.56', '14.26', '0.51');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('23', 'Apricots Canned Heavy Syrup Drained', '100', '3', '83', '0.11', '0', '0.007', '0', '4', '21.31', '18.65', '0.64');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('24', 'Cherries Sour Canned Water Pack Drained', '100', '3', '42', '0.21', '0', '0.007', '0', '4', '10.45', '6.99', '0.69');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('25', 'Cherries Sweet Canned Pitted Heavy Syrup Drained', '100', '3', '83', '0.21', '0', '0.041', '0', '3', '21.07', '16.18', '0.73');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('26', 'Apple Juice Canned Or Bottled Unsweetened With Added Ascorbic Acid', '100', '3', '46', '0.13', '0', '0.022', '0', '4', '11.3', '9.62', '0.1');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('27', 'Applesauce Canned Unsweetened With Added Ascorbic Acid', '100', '3', '42', '0.1', '0', '0.008', '0', '2', '11.27', '9.39', '0.17');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('28', 'Applesauce Canned Sweetened With Salt', '100', '3', '76', '0.18', '0', '0.03', '0', '28', '19.91', '0', '0.18');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('29', 'Pink Grapefruit Juice', '100', '3', '39', '0.1', '0', '0.014', '0', '1', '9.2', '0', '0.5');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('30', 'Apple Juice Frozen Concentrate Unsweetened Diluted With 3 Volume Water With Added Ascorbic Acid', '100', '3', '47', '0.1', '0', '0.018', '0', '7', '11.54', '0', '0.14');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('31', 'Bartlett Pears', '100', '3', '63', '0.16', '0', '0.018', '0', '1', '15.01', '9.69', '0.39');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('32', 'Red Anjou Pears', '100', '3', '62', '0.14', '0', '0.018', '0', '1', '14.94', '9.54', '0.33');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('33', 'Bosc Pear', '100', '3', '67', '0.09', '0', '0.018', '0', '1', '16.1', '10.23', '0.36');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('34', 'Green Anjou Pear', '100', '3', '66', '0.1', '0', '0.018', '0', '1', '15.79', '9.73', '0.44');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('35', 'Prune Puree', '100', '3', '257', '0.2', '0', '0.016', '0', '23', '65.1', '39', '2.1');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('36', 'Candied Fruit', '100', '3', '322', '0.07', '0', '0.01', '0', '98', '82.74', '80.68', '0.34');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('37', 'Abiyuch', '100', '3', '69', '0.1', '0', '0.014', '0', '20', '17.6', '8.55', '1.5');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('38', 'Rowal', '100', '3', '111', '2', '0', '0.245', '0', '4', '23.9', '14.1', '2.3');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('39', 'Guava Nectar Canned With Added Ascorbic Acid', '100', '3', '63', '0.06', '0', '0.02', '0', '6', '16.25', '12.95', '0.09');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('40', 'Mango Nectar Canned', '100', '3', '51', '0.06', '0', '0.014', '0', '5', '13.12', '12.45', '0.11');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('41', 'Tamarind Nectar Canned', '100', '3', '57', '0.12', '0', '0.014', '0', '7', '14.73', '12.7', '0.09');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('42', 'Pomegranate Juice Bottled', '100', '3', '54', '0.29', '0', '0.077', '0', '9', '13.13', '12.65', '0.15');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('43', 'Nance Canned Syrup Drained', '100', '3', '95', '1.28', '0', '0.077', '0', '8', '22.79', '15.66', '0.56');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('44', 'Nance Frozen Unsweetened', '100', '3', '73', '1.16', '0', '0.077', '0', '3', '16.97', '8.31', '0.66');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('45', 'Naranjilla (Lulo) Pulp Frozen Unsweetened', '100', '3', '25', '0.22', '0', '0.077', '0', '4', '5.9', '3.74', '0.44');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('46', 'Horned Melon (Kiwano)', '100', '3', '44', '1.26', '0', '0.077', '0', '2', '7.56', '0', '1.78');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('47', 'Orange Pineapple Juice Blend', '100', '3', '51', '0.08', '0', '0.011', '0', '4', '12.2', '10.57', '0.41');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('48', 'Fuji Apples', '100', '3', '63', '0.18', '0', '0.011', '0', '1', '15.22', '11.68', '0.2');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('49', 'Orange Juice Chilled Includes From Concentrate With Added Calcium And Vitamins A D E', '100', '3', '49', '0.12', '0', '0.014', '0', '2', '11.54', '8.31', '0.68');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('50', 'Fruit Juice Smoothie Naked Juice Mighty Mango', '100', '3', '63', '0', '0', '0.014', '0', '4', '15', '12.5', '0.42');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('51', 'Fruit Juice Smoothie Naked Juice Green Machine', '100', '3', '53', '0.26', '0', '0.053', '0', '6', '12.53', '11.15', '0.6');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('52', 'Fruit Juice Smoothie Bolthouse Farms Berry Boost', '100', '3', '46', '0.02', '0', '0.003', '0', '4', '10.9', '9.3', '0.63');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('53', 'Fruit Juice Smoothie Bolthouse Farms Green Goodness', '100', '3', '56', '0.33', '0', '0.068', '0', '11', '13.04', '11.46', '0.63');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('54', 'Fruit Juice Smoothie Bolthouse Farms Strawberry Banana', '100', '3', '52', '0.3', '0', '0.055', '0', '5', '12.37', '10.33', '0.44');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('55', 'Apple Juice Canned Or Bottled Unsweetened With Added Ascorbic Acid Calcium And Potassium', '100', '3', '48', '0.17', '0', '0.029', '0', '5', '11.49', '9.47', '0.12');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('56', 'Lemon Juice From Concentrate Bottled Concord', '100', '3', '24', '0.07', '0', '0.029', '0', '29', '5.37', '1.42', '0.4');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('57', 'Lemon Juice From Concentrate Bottled Real Lemon', '100', '3', '17', '0.07', '0', '0.027', '0', '26', '5.66', '1.59', '0.47');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('58', 'Cranberry Sauce Whole Canned Ocean Spray', '100', '3', '158', '0.05', '0', '0.007', '0', '5', '40.4', '31.3', '0.75');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('59', 'Cranberry Sauce Jellied Canned Ocean Spray', '100', '3', '160', '0.04', '0', '0.007', '0', '5', '40.61', '32.2', '1.05');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('60', 'Ruby Red Grapefruit Juice Blend (Grapefruit Grape Apple) Ocean Spray Bottled With Added Vitamin C', '100', '3', '44', '0.1', '0', '0.008', '0', '8', '10.53', '10.3', '0.5');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('61', 'Java Plum', '100', '3', '60', '0.23', '0', '0.029', '0', '14', '15.56', '8.99', '0.72');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('62', 'Jujube', '100', '3', '79', '0.2', '0', '0.029', '0', '3', '20.23', '8.99', '1.2');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('63', 'Dried Jujube', '100', '3', '281', '0.5', '0', '0.029', '0', '5', '72.52', '8.99', '4.72');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('64', 'Kiwifruit', '100', '3', '61', '0.52', '0', '0.029', '0', '3', '14.66', '8.99', '1.14');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('65', 'Kumquats', '100', '3', '71', '0.86', '0', '0.103', '0', '10', '15.9', '9.36', '1.88');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('66', 'Limes', '100', '3', '30', '0.2', '0', '0.022', '0', '2', '10.54', '1.69', '0.7');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('67', 'Lime Juice', '100', '3', '25', '0.07', '0', '0.008', '0', '2', '8.42', '1.69', '0.42');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('68', 'Lime Juice Canned Or Bottled Unsweetened', '100', '3', '21', '0.23', '0', '0.026', '0', '16', '6.69', '1.37', '0.25');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('69', 'Dried Sweetened Blueberries', '100', '3', '317', '2.5', '0', '0.2', '0', '3', '80', '67.5', '2.5');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('70', 'Prunes Canned Heavy Syrup Pack Solids And Liquids', '100', '3', '105', '0.2', '0', '0.016', '0', '3', '27.8', '67.5', '0.87');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('71', 'Prunes (Low-Moisture)', '100', '3', '339', '0.73', '0', '0.059', '0', '5', '89.07', '67.5', '3.7');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('72', 'Prunes Dehydrated (Low-Moisture) Stewed', '100', '3', '113', '0.24', '0', '0.02', '0', '2', '29.7', '67.5', '1.23');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('73', 'Prunes (Dried Plums)', '100', '3', '240', '0.38', '0', '0.088', '0', '2', '63.88', '38.13', '2.18');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('74', 'Quinces', '100', '3', '57', '0.1', '0', '0.01', '0', '4', '15.3', '38.13', '0.4');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('75', 'Golden Seedless Raisins', '100', '3', '301', '0.2', '0', '0.065', '0', '24', '80.02', '38.13', '3.28');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('76', 'Raisins', '100', '3', '299', '0.25', '0', '0.094', '0', '26', '79.32', '65.18', '3.3');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('77', 'Raisins Seeded', '100', '3', '296', '0.54', '0', '0.178', '0', '28', '78.47', '65.18', '2.52');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('78', 'Rambutan Canned Syrup Pack', '100', '3', '82', '0.21', '0', '0.178', '0', '11', '20.87', '65.18', '0.65');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('79', 'Rhubarb Frozen Uncooked', '100', '3', '21', '0.11', '0', '0.029', '0', '2', '5.1', '1.1', '0.55');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('80', 'Rhubarb Frozen Cooked With Sugar', '100', '3', '116', '0.05', '0', '0.014', '0', '1', '31.2', '28.7', '0.39');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('81', 'Roselle', '100', '3', '49', '0.64', '0', '0.014', '0', '6', '11.31', '28.7', '0.96');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('82', 'Rose Apples', '100', '3', '25', '0.3', '0', '0.014', '0', '0', '5.7', '28.7', '0.6');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('83', 'Strawberries Canned Heavy Syrup Pack Solids And Liquids', '100', '3', '92', '0.26', '0', '0.014', '0', '4', '23.53', '21.83', '0.56');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('84', 'Frozen Strawberries', '100', '3', '35', '0.11', '0', '0.006', '0', '2', '9.13', '4.56', '0.43');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('85', 'Strawberries Frozen Sweetened Sliced', '100', '3', '96', '0.13', '0', '0.007', '0', '3', '25.92', '24.01', '0.53');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('86', 'Sugar Apples', '100', '3', '94', '0.29', '0', '0.048', '0', '9', '23.64', '24.01', '2.06');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('87', 'Feijoa', '100', '3', '61', '0.42', '0', '0.104', '0', '3', '15.21', '8.2', '0.71');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('88', 'Asian Pears', '100', '3', '42', '0.23', '0', '0.012', '0', '0', '10.65', '7.05', '0.5');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('89', 'Fruit Cocktail Canned Heavy Syrup Drained', '100', '3', '70', '0.1', '0', '0.014', '0', '6', '18.8', '17.14', '0.47');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('90', 'Blueberries Canned Light Syrup Drained', '100', '3', '88', '0.4', '0', '0.028', '0', '3', '22.66', '17.45', '1.04');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('91', 'Blueberries Wild Canned Heavy Syrup Drained', '100', '3', '107', '0.34', '0', '0.028', '0', '1', '28.32', '19.28', '0.56');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('92', 'Peaches Canned Heavy Syrup Drained', '100', '3', '72', '0.18', '0', '0.013', '0', '6', '18.43', '14.66', '0.52');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('93', 'Pears Canned Heavy Syrup Drained', '100', '3', '74', '0.18', '0', '0.01', '0', '5', '19.08', '16.42', '0.24');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('94', 'Plums Canned Heavy Syrup Drained', '100', '3', '89', '0.14', '0', '0.011', '0', '19', '23.12', '21.58', '0.44');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('95', 'Tangerines (Mandarin Oranges) Canned Juice Pack Drained', '100', '3', '38', '0.04', '0', '0.004', '0', '5', '9.41', '8.25', '0.75');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('96', 'Peach Nectar Canned With Added Ascorbic Acid', '100', '3', '50', '0.51', '0', '0.224', '0', '8', '11.93', '11.16', '0.21');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('97', 'Pear Nectar Canned With Added Ascorbic Acid', '100', '3', '60', '0.01', '0', '0.001', '0', '4', '15.76', '15.16', '0.11');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('98', 'Pineapple Juice Canned Or Bottled Unsweetened With Added Ascorbic Acid', '100', '3', '53', '0.12', '0', '0.008', '0', '2', '12.87', '9.98', '0.36');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('99', 'Apple Juice Frozen Concentrate Unsweetened Undiluted With Added Ascorbic Acid', '100', '3', '166', '0.37', '0', '0.06', '0', '25', '41', '38.83', '0.51');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('100', 'Grapefruit Juice White Bottled Unsweetened Ocean Spray', '100', '3', '37', '0.64', '0', '0.06', '0', '2', '7.51', '7.69', '0.54');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('101', 'Jackfruit Canned Syrup Pack', '100', '3', '92', '0.14', '0', '0.06', '0', '11', '23.94', '7.69', '0.36');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('102', 'Medjool Dates', '100', '3', '277', '0.15', '0', '0.06', '0', '1', '74.97', '66.47', '1.81');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('103', 'Durian', '100', '3', '147', '5.33', '0', '0.06', '0', '2', '27.09', '8.29', '1.47');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('104', 'Pineapple (Traditional)', '100', '3', '45', '0.13', '0', '0.06', '0', '1', '11.82', '8.29', '0.55');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('105', 'Pineapple Raw Extra Sweet Variety', '100', '3', '51', '0.11', '0', '0.06', '0', '1', '13.5', '10.32', '0.53');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('106', 'Clementines', '100', '3', '47', '0.15', '0', '0.06', '0', '1', '12.02', '9.18', '0.85');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('107', 'Guanabana Nectar Canned', '100', '3', '59', '0.17', '0', '0.029', '0', '8', '14.93', '13.07', '0.11');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('108', 'Juice Apple And Grape Blend With Added Ascorbic Acid', '100', '3', '50', '0.12', '0', '0.023', '0', '7', '12.46', '10.92', '0.16');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('109', 'Juice Apple Grape And Pear Blend With Added Ascorbic Acid And Calcium', '100', '3', '52', '0.12', '0', '0.021', '0', '5', '12.96', '9.95', '0.17');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('110', 'Plantains Green Fried', '100', '3', '309', '11.81', '0', '3.69', '0', '2', '49.17', '3.63', '1.5');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('111', 'Fried Yellow Plantains', '100', '3', '236', '7.51', '0', '1.816', '0', '6', '40.77', '21.76', '1.42');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('112', 'Red Delicious Apples', '100', '3', '59', '0.2', '0', '1.816', '0', '1', '14.06', '10.48', '0.27');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('113', 'Golden Delicious Apples', '100', '3', '57', '0.15', '0', '1.816', '0', '2', '13.6', '10.04', '0.28');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('114', 'Granny Smith Apples', '100', '3', '58', '0.19', '0', '1.816', '0', '1', '13.61', '9.59', '0.44');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('115', 'Gala Apples', '100', '3', '57', '0.12', '0', '0.025', '0', '1', '13.68', '10.37', '0.25');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('116', 'Pineapple Juice Canned Not From Concentrate Unsweetened With Added Vitamins A C And E', '100', '3', '50', '0.14', '0', '0.025', '0', '3', '12.18', '9.98', '0.36');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('117', 'Fortified Fruit Juice Smoothie', '100', '3', '71', '0', '0', '0.025', '0', '4', '16.67', '12.08', '0.42');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('118', 'Grape Juice Canned Or Bottled Unsweetened With Added Ascorbic Acid And Calcium', '100', '3', '62', '0.13', '0', '0.025', '0', '5', '14.77', '14.2', '0.37');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('119', 'Fruit Juice Smoothie Odwalla Original Superfood', '100', '3', '50', '0.36', '0', '0.105', '0', '3', '11.51', '10.16', '0.63');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('120', 'Frozen Raspberries', '100', '3', '56', '0.81', '0', '0.064', '0', '4', '12.55', '6.54', '1.15');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('121', 'Guava Nectar With Sucralose Canned', '100', '3', '48', '0.07', '0', '0.023', '0', '6', '13.3', '10.15', '0.3');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('122', 'Kiwifruit Zespri Sungold Raw', '100', '3', '63', '0.28', '0', '0.065', '0', '3', '15.79', '12.3', '1.02');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('123', 'Cranberry Juice Blend 100% Juice Bottled With Added Vitamin C And Calcium', '100', '3', '45', '0.12', '0', '0.002', '0', '6', '10.91', '9.8', '0.27');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('124', 'Fruit Juice Smoothie Odwalla Strawberry Banana', '100', '3', '48', '0.32', '0', '0.059', '0', '2', '11.05', '9.9', '0.5');				
INSERT INTO foods (foodId, foodName, servingPortion, foodGroupId, totalCalories, totalFat, transFat, saturatedFat, cholesterol, sodium, totalCarbohydrate, sugars, protein) VALUES ('125', 'Fruit Juice Smoothie Naked Juice Strawberry Banana', '100', '3', '50', '0.27', '0', '0.061', '0', '2', '11.66', '10.05', '0.48');				