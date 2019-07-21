Instructions to run our project
Step 1: Installing Python
1.	Download and install python from https://www.python.org/downloads/.
2.	Make sure to install python with pip and Add Environmental Variable.
Step 2: Installing necessary packages for python
1.	Open command prompt/ Terminal and install copy paste the following commands one by one.
•	pip install pandas
•	pip install Flask
•	pip install numpy
•	pip install matplotlib
•	pip install scikit-learn
•	pip install pymysql
•	pip install json
Step 3: Setting up local database.
1.	Download and install WAMP server(suggested) from .https://sourceforge.net/projects/wampserver/
2.	After installation open your browser and type http://localhost/phpmyadmin/index.php in the Address bar.
3.	You will be redirected to phpmyadmin login page, where
•	Username=root
•	Password=(null)
4.	Then in the side bar click “+new” to create new database.
5.	In the “Database Name” input box type the database name as “e_meter”.
6.	Then in the top bar click “Import”.
7.	Click “Choose File” and navigate to the “e_meter.sql” file provided in the project files.
8.	Now u can see the “Test Dataset” we created to test our project.
Step 4: Running the Flask Server.
1.	Open Command Prompt/Terminal and navigate to the project files.
2.	Type the following command to start the Flask server .
•	python e_meter.py
3.	Now the Web Application is ready to be viewed.
Step 5: Running Web Application
1.	Open your browser and type in the following IP address in the Address Bar.
•	127.0.0.1:5000/
2.	For Login use,
•	Meter ID= 1001
•	Password= user1001
3.	As soon as you login you’ll be redirected to the user details page where the user’s monthly usage details will be shown on screen.
4.	When the month column’s buttons are clicked then the user’s daily usage details are displayed.
5.	When the button in Room column is clicked the user’s usage in each room is displayed.
