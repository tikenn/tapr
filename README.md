# TAPR:  The Apheresis Patient Registry
This is a small application built for our institution's pathology department to more easily generate morning reports for apheresis patients.  Feel free to use it if you would like.

## A Note on Installation
The system only needs a web server running PHP (we use PHP-FPM specifically) and a MySQL compatible database (we use MariaDB).  After that, follow the steps below:

1. Copy files in this repository to your web root
2. Load the tapr.sql file into your database.  For MariaDB and MySQL in Linux distros, the following command will work:

  ```bash
  mysql -u root -p < tapr.sql
  ```

3. Change the login information in 'includes/db.php.default' to meet your database credentials and rename to 'includes/db.php'
