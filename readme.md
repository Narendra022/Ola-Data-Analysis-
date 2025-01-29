# 🚖 OLA Data Analyst Project  

## 📌 Project Overview  
This project analyzes ride data from OLA using **SQL** and **Power BI** to derive insights related to ride bookings, cancellations, ratings, revenue, and customer behavior.  

## 🛠️ Technologies Used  
- **SQL**: For querying and extracting insights from the dataset.  
- **Power BI**: For visualization and dashboard creation.  

## 📊 SQL Analysis  
Below are the key SQL queries used in this project:  

### ✅ Retrieve All Successful Bookings  
```sql
SELECT * FROM rides WHERE Booking_Status = 'Completed';
```

### 🚗 Find the Average Ride Distance for Each Vehicle Type  
```sql
SELECT Vehicle_Type, AVG(Ride_Distance) AS Avg_Distance
FROM rides
GROUP BY Vehicle_Type;
```

### ❌ Get the Total Number of Cancelled Rides by Customers  
```sql
SELECT SUM(cancelled_Rides_by_Customer) AS Total_Cancelled_By_Customers FROM rides;
```

### 🏆 List the Top 5 Customers Who Booked the Highest Number of Rides  
```sql
SELECT Customer_ID, COUNT(*) AS Total_Bookings
FROM rides
GROUP BY Customer_ID
ORDER BY Total_Bookings DESC
LIMIT 5;
```

### 🚦 Get the Number of Rides Cancelled by Drivers Due to Personal and Car-Related Issues  
```sql
SELECT SUM(cancelled_Rides_by_Driver) AS Total_Cancelled_By_Drivers FROM rides;
```

### ⭐ Find the Maximum and Minimum Driver Ratings for Prime Sedan Bookings  
```sql
SELECT MAX(Driver_Ratings) AS Max_Rating, MIN(Driver_Ratings) AS Min_Rating
FROM rides
WHERE Vehicle_Type = 'Prime Sedan';
```

### 💰 Retrieve All Rides Where Payment Was Made Using UPI  
```sql
SELECT * FROM rides WHERE Payment_Method = 'UPI';
```

### 📈 Find the Average Customer Rating per Vehicle Type  
```sql
SELECT Vehicle_Type, AVG(Customer_Rating) AS Avg_Customer_Rating
FROM rides
GROUP BY Vehicle_Type;
```

### 📊 Calculate the Total Booking Value of Rides Completed Successfully  
```sql
SELECT SUM(Booking_Value) AS Total_Revenue FROM rides WHERE Booking_Status = 'Completed';
```

### 🛑 List All Incomplete Rides Along With the Reason  
```sql
SELECT Incomplete_Rides_Reason, COUNT(*) AS Total_Incomplete_Rides
FROM rides
WHERE Incomplete_Rides = 'Yes'
GROUP BY Incomplete_Rides_Reason;
```

## 📉 Power BI Dashboards  
The following visualizations were created in **Power BI**:  

1. **Ride Volume Over Time** 📆  
2. **Booking Status Breakdown** 📊  
3. **Top 5 Vehicle Types by Ride Distance** 🚗  
4. **Average Customer Ratings by Vehicle Type** ⭐  
5. **Cancelled Rides Reasons** ❌  
6. **Revenue by Payment Method** 💰  
7. **Top 5 Customers by Total Booking Value** 🏆  
8. **Ride Distance Distribution Per Day** 📏  
9. **Driver Ratings Distribution** 🎖️  
10. **Customer vs. Driver Ratings** ⚖️  

## 📜 Dataset Columns  
The dataset consists of the following key fields:  

- **Booking Details**: `Date`, `Time`, `Booking_ID`, `Booking_Status`  
- **Customer & Vehicle Info**: `Customer_ID`, `Vehicle_Type`, `Pickup_Location`, `Drop_Location`  
- **Cancellation & Incompletion Data**: `cancelled_Rides_by_Customer`, `cancelled_Rides_by_Driver`, `Incomplete_Rides`, `Incomplete_Rides_Reason`  
- **Ride Metrics**: `Ride_Distance`, `Booking_Value`, `Payment_Method`, `Driver_Ratings`, `Customer_Rating`  

## 🚀 How to Use This Project  
1. Clone the repository:  
   ```sh
   git clone https://github.com/Narendra022/Ola-Data-Analysis.git
   ```
2. Run the SQL queries on your database.  
3. Open the Power BI file to explore dashboards.  

## 📬 Contact  
If you have any questions, feel free to reach out via GitHub Issues or connect with me on LinkedIn.  

