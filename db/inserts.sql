-- Inserts para la tabla users
INSERT INTO users (first_name, last_name, username, password) VALUES
('John', 'Doe', 'johndoe', 'password123'),
('Jane', 'Smith', 'janesmith', 'abc123'),
('Michael', 'Johnson', 'mjohnson', 'pass456');

-- Inserts para la tabla provinces
INSERT INTO provinces (name, full_name, latitude, longitude, display_order) VALUES
('CABA', 'Ciudad Autónoma de Buenos Aires', -34.6037, -58.3816, 1),
('BA', 'Buenos Aires', -34.9215, -57.9545, 2),
('CAT', 'Catamarca', -28.4696, -65.7795, 3),
('CHA', 'Chaco', -26.8406, -60.7320, 4),
('CHU', 'Chubut', -43.3000, -65.1000, 5),
('CBA', 'Córdoba', -31.4201, -64.1888, 6),
('COR', 'Corrientes', -27.4691, -58.8309, 7),
('ER', 'Entre Ríos', -31.7310, -60.5280, 8),
('FOR', 'Formosa', -26.1775, -58.1781, 9),
('JU', 'Jujuy', -24.1858, -65.2995, 10),
('LP', 'La Pampa', -36.6167, -64.2833, 11),
('LR', 'La Rioja', -29.4110, -66.8509, 12),
('MZA', 'Mendoza', -32.8908, -68.8272, 13),
('MI', 'Misiones', -27.3621, -55.9009, 14),
('NE', 'Neuquén', -38.9516, -68.0591, 15),
('RN', 'Río Negro', -40.8000, -63.0000, 16),
('SAL', 'Salta', -24.7821, -65.4232, 17),
('SJ', 'San Juan', -31.5375, -68.5364, 18),
('SL', 'San Luis', -33.3017, -66.3378, 19),
('SC', 'Santa Cruz', -51.6214, -69.2181, 20),
('SF', 'Santa Fe', -31.6333, -60.7000, 21),
('SE', 'Santiago del Estero', -27.7834, -64.2642, 22),
('TF', 'Tierra del Fuego', -54.8036, -68.3030, 23),
('TUC', 'Tucumán', -26.8241, -65.2226, 24);


-- Inserts para la tabla locations
INSERT INTO locations (name, id_province, latitude, longitude) VALUES
('Buenos Aires City', 1, -34.6037, -58.3816),
('Córdoba City', 2, -31.4201, -64.1888),
('Rosario', 3, -32.9442, -60.6505);

-- Inserts para la tabla event_locations
INSERT INTO event_locations (id_location, name, full_address, max_capacity, latitude, longitude, id_creator_user) VALUES
(1, 'Palacio de Congresos', 'Av. Pres. Roque Sáenz Peña 832, CABA', 200, -34.6037, -58.3816, 1),
(2, 'Centro de Convenciones', 'Av. Juan B. Justo 8500, Córdoba', 150, -31.4201, -64.1888, 2),
(3, 'Expo Center Rosario', 'Av. Jorge Newbery 3419, Rosario', 180, -32.9442, -60.6505, 3);


-- Inserts para la tabla event_categories
INSERT INTO event_categories (name, display_order) VALUES
('Business', 1),
('Technology', 2),
('Art', 3);

-- Inserts para la tabla events
INSERT INTO events (name, description, id_event_category, id_event_location, start_date, duration_in_minutes, price, enabled_for_enrollment, max_assistance, id_creator_user) VALUES
('Business Conference', 'Annual conference for business professionals.', 1, 1, '2024-07-15 09:00:00', 480, 100.00, true, 300, 1),
('Tech Expo', 'Showcasing the latest in technology.', 2, 2, '2024-08-20 10:00:00', 360, 75.00, true, 200, 2),
('Art Exhibition', 'Featuring works of local artists.', 3, 3, '2024-09-25 11:00:00', 240, 50.00, true, 150, 3);

-- Inserts para la tabla tags
INSERT INTO tags (name) VALUES
('Networking'),
('Innovation'),
('Digital Marketing');

-- Inserts para la tabla events_tags
INSERT INTO events_tags (id_event, id_tag) VALUES
(1, 1),
(2, 2),
(3, 3);

-- Inserts para la tabla events_enrollments
INSERT INTO events_enrollments (id_event, id_user, description, registration_date_time, attended, observations, rating) VALUES
(1, 2, 'Excited to learn and network!', '2024-07-01 08:30:00', true, 'Great event overall.', 5),
(1, 3, 'Hoping to gain insights into business trends.', '2024-07-02 09:15:00', false, 'Good speakers.', 4),
(2, 1, 'Interested in the latest tech innovations.', '2024-08-10 11:30:00', true, 'Excellent presentations.', 5),
(2, 3, 'Exploring new opportunities in the tech industry.', '2024-08-15 10:45:00', true, 'Informative sessions.', 4),
(3, 1, 'Looking forward to experiencing local art.', '2024-09-20 12:00:00', false, 'Beautiful artwork on display.', 4),
(3, 2, 'Excited to support local artists.', '2024-09-22 13:30:00', true, 'Impressive variety of pieces.', 5);
