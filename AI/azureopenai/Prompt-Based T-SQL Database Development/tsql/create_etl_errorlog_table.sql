IF NOT EXISTS (SELECT * FROM sys.tables WHERE name = 'error_log')
BEGIN
    CREATE TABLE etl_process.error_log
    (
        id INT IDENTITY(1,1),
        processid INT,
        processname VARCHAR(50),
        objectname VARCHAR(50),
        errormsg VARCHAR(MAX),
        starttime DATETIME,
        endtime DATETIME
    )
END