Some of the clusters in the provided SQL scripts rely on foreign keys to other clusters in addition to the Digital Twin itself. These references are located at the end of each SQL file, making it easy for a user to edit them out if needed when running the scripts.

Example:

In the Energy & Resources cluster, the final line references the RentalUnit in the Property Management cluster. The reference can be found in the following line:


ALTER TABLE OperationalMeasurementRentalUnit 
ADD CONSTRAINT FK_OperationalMeasurementRentalUnit_RentalUnit 
FOREIGN KEY (RentalUnitId) 
REFERENCES RentalUnit(RentalUnitId);

If you need to remove this reference, simply delete or comment out this line before executing the script.
