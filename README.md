# Bid-My-Ride 🚗💰  
A comprehensive car trading and bidding platform designed for **ABC CARS Pte Ltd**. This website enables users to register, sell cars, place bids, and search for vehicles by model, make, or registration year. Administrators can manage users and car listings effectively.

---

## 🌟 Project Background  
ABC CARS Pte Ltd needed a developer to create an online platform for users to buy, sell, and bid on cars. The platform ensures seamless user experience while providing robust admin management tools for maintaining data integrity.  

---

## 🎯 Project Objectives  
### User Functionalities:
- **Register** and create an account.  
- **Login/Logout** to access the portal.  
- **Post Car** details for sale.  
- **View All Cars** listed on the platform.  
- **Search for Cars** by make, model, or registration year.  
- **View Car Details** to make informed decisions.  
- **Update Profile** information.  
- **Post Bidding Price** to compete for desired cars.  

### Admin Privileges:
- **Edit Car Details** to ensure accuracy.  
- **Delete Car Listings** when necessary.  
- **Edit and Delete User Data** to maintain platform integrity.  

---

## 🛠 Tools & Platforms Used  
- **Spring Tools Suite 3**: Development environment for creating and managing the project.  
- **MySQL Workbench**: Database server for managing car and user data.  
- **Java JDK 17.0.1**: Core programming language and runtime.  
- **Spring Boot**: Framework for building the application backend.  
- **Thymeleaf**: Templating engine for dynamic web pages.  
- **Maven**: Dependency and project management tool.  
- **JDBC Connector**: For database connectivity.  

---

## 🚀 Installation Instructions  
1. Clone the repository:  
   ```bash
   git clone https://github.com/RudranshPanchal/Bid-My-Ride.git

2. Open the project in Spring Tools Suite (STS).

3. Configure the database in application.properties with your MySQL credentials. Example:
properties

    ```bash
      spring.datasource.url=jdbc:mysql://localhost:3306/bidmyride
      spring.datasource.username=your_username
      spring.datasource.password=your_password
    
4. Run the following command to build and run the application:

    ```bash
      mvn spring-boot:run
          
5. Access the application at http://localhost:8080.

   
## 📖 Usage Examples
User Actions:
Register an account and log in to start buying and selling cars.
Post a car for sale, including details like make, model, and registration year.
Browse all cars or search for specific cars using the search bar.
Place a bid on a car you're interested in.

Admin Actions:
Log in as an administrator to edit or delete car listings.
Manage user data by editing or deleting profiles.


## 📷 Screenshots

**Register**

![image](https://github.com/user-attachments/assets/0132d086-e680-49ca-a563-ff934be11f14)

 
**Login**

![image](https://github.com/user-attachments/assets/43e6240f-6192-4f8d-873a-6f4b5ceea4f1)

 
**View All Cars**

![image](https://github.com/user-attachments/assets/8034c613-d43c-477e-9c31-d2b026daf6d7)

 
**Cars Detail**

![image](https://github.com/user-attachments/assets/aefd1b35-816a-4c8b-904d-8fdc3fcc3d9f)

 
**Profile**

![image](https://github.com/user-attachments/assets/6d50a786-af72-427e-8053-4cb82618f37a)

 
**View All Users (Admin Only)**

![image](https://github.com/user-attachments/assets/cfc1425e-58d8-475b-8f8a-1dedaf955eba)

 
**Update User**

 ![image](https://github.com/user-attachments/assets/e83e5699-0016-4b1c-9ccb-ff1848b21937)



## 🤝 Contribution Guidelines
We welcome contributions to enhance the functionality of Bid-My-Ride! Please follow these steps:

Fork the repository.
Create a new branch for your feature or bug fix.
Commit your changes with descriptive messages.
Submit a pull request explaining your modifications.


## 📜 License
This project is licensed under the MIT License. See the LICENSE file for more details.

## 🎉 Acknowledgements
Special thanks to ABC CARS Pte Ltd for trusting us to build this robust car trading platform.

