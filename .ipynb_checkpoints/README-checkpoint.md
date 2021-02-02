# SQL Challenge

## Data Modeling
I was hiven 6 different CSV files, which I inspected to find out the relationship between each CSV files and sketchd out an ERD of the tables by using a tool like http://www.quickdatabasediagrams.com.

This is how the schema map looks like, in which I specified data types, primary keys, foreign keys, and other constraints:

![image1](SchemaMap.png)



## Data Analysis

Once I have a complete database, I did the following:

1. List the following details of each employee: employee number, last name, first name, sex, and salary.

![image4](Screenshots/1Query.png)

2. List first name, last name, and hire date for employees who were hired in 1986.

![image5](Screenshots/2Query.png)

3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

![image6](Screenshots/3Query.png)

4. List the department of each employee with the following information: employee number, last name, first name, and department name.

![image7](Screenshots/4Query.png)

5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

![image8](Screenshots/5Query.png)

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

![image9](Screenshots/6Query.png)

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

![image10](Screenshots/7Query.png)

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

![image11](Screenshots/8Query.png)

## Further Analysis

As I examined the data, I wanted to create some graphs in Pandas to better tell the story. I decided to create a histogram to visualize the most common salary ranges for employees.
This is what I found:
![image2](Histogram_of_Salary.png)

This chart demonstarates how average salary is skewed to the right, which means that the average salary is less than the median salary. This skeweness does make sense, because there are not so many employees earning $100,000 in a company.

Also, I wanted to visualize average salary by title in a bar chart: 

![image3](Bar_Chart.png)

From the above graph, it's observable that Sales, Marketing and Finance departments are the top three departments with the highest average salary.  



