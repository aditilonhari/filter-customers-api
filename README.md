# README

The application uses Ruby version 2.3.3p222 & Rails version 5.1.6. To get started, first setup the database by running rake db:migrate and rake db:seed commands to populate the database with approproate tables and customer data.

You can then run the "rails server -p 3001" command to run the server on port 3001. I have used a different port than default one here since we will be running the frontend npm server on port 3000.

Once you have the server running you can run the frontend server using "npm start" command which will then display the unfiltered list of customers on the page along with a textarea to search for any text. You can filter down the customer list based on the text you enter in the textarea. You will receive a empty list if there are no records matching the text. 

You also have a dropdown that uniquely lists the companies available in the database, set to "All" by default. You can filter the records based on any specific company and you will get back a list of customers associated with that company. You can combine this with the text search to find a customer in a particular company with certain firstname/lastname.

You can share the link/url created by the searches to send it with anyone. There is a "Share the link" button that gives you the link to share with added filters as necessary. You can simple copy it over and share.

Finally you can run the test suites to make sure you haven't broken any functionality as you keep adding further changes to you app. 
Running the command "rails test" would run the controller intergration tests.