SET @user_lat = 11.0168; -- Replace with your latitude
SET @user_lon = 76.9558; -- Replace with your longitude
SET @radius = 5; -- Radius in kilometers

SELECT 
    id, 
    name, 
    address, 
    (6371 * ACOS(COS(RADIANS(@user_lat)) * COS(RADIANS(latitude)) * 
    COS(RADIANS(longitude) - RADIANS(@user_lon)) + 
    SIN(RADIANS(@user_lat)) * SIN(RADIANS(latitude)))) AS distance_km
FROM restaurants
HAVING distance_km <= @radius
ORDER BY distance_km;

