# Code assumes that data in Database is validated in terms of format. Therefore 
# the focus is on processing to produce the required output.
#
import sys
import mysql.connector

try:
    connection = mysql.connector.connect(host='localhost',
                                         database='college',
                                         user='root',
                                         password='R00ts.R0ck.Reggae')
    cursor = connection.cursor()

#    Define query to retrieve records from the database
    sql_select_Query = "select * from StudentRecord"
    
#     Update query statement for updating student record with average mark and grade. It 
#     Table as is and assumes that the surname is unique at least for this data set.
    update_student_rec = "update StudentRecord set AverageScore =%av, Grade =%g where Surname =%s"
    
    
    cursor.execute(sql_select_Query)
    InputData = cursor.fetchall()
    
 #   StudentRecord = []
    startidx = 2
    for row in InputData :
 #       StudentRecord.append(row)
        marks = row[startidx:]
        totalmark = 0
        rowsize = len(row)
        subjectcnt = len(marks)

# Calculate the total marks for a student
        for idx in range(startidx, rowsize) :
            totalmark = totalmark + float(row[idx])

# Calculate the average mark for a student

        avmark = totalmark/subjectcnt 

# Determine Student's grade 

        if avmark>=80.0 and avmark<=100.0:
           studentgrade = 'A' 
        elif avmark>=70.0 and avmark<79.9:
             studentgrade = 'B' 
        elif avmark>=60.0 and avmark<69.9:
             studentgrade = 'C'
        elif avmark>=50.0 and avmark<59.9:
             studentgrade = 'D'
        elif avmark>=40.0 and avmark<49.9:
             studentgrade = 'E' 
        elif avmark>=0 and avmark<39.9:
             studentgrade = 'F' 
        else:
             studentgrade = 'UNKNOWN' 
            
        cursor.execute(update_student_rec, (avmark, studentgrade, row[1]))
#       connection.commit()
except OSError as err1
    print("OS error: {0}".format(err1))
except mysql.connector.Error as err2:
    print("Dataase Connect and/or table retrieval error: {}".format(err2));

finally:
    if connection.is_connected():
       cursor.close()
       connection.close()
       print("College Database connection is closed")

