SELECT personID, personPhone, personEmail, personRole, personLocationId, driverId
FROM person, driver
WHERE Driver_driverId = driverId
ORDER BY personId DESC;