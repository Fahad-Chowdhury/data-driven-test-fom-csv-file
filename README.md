Simple robot tests to read user data from CSV file and verify correct error messages are  displayed with invalid logins.

To run:
1. First put correct data in users.csv file
2. Update ${INVALID_CREDENTIALS_PATH_CSV} with path to CSV file in 'InputData.robot'
3. Execute command: robot -d results tests/Cars.robot