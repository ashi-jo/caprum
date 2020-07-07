import pandas as pd
import sqlite3


conn=sqlite3.connect("booksdata.sqlite")
b=conn.cursor()
b.execute("SELECT * FROM book1")
movies=b.fetchall()
con=sqlite3.connect('BOOKSCOREdata.sqlite')
c=con.cursor()
c.execute("SELECT * FROM OP_books")
data=c.fetchall()
#print(data)
a=15
meow=[]

for row in data:
     l=list(row)
     m=l[0]
     m=int(m)
     if m==a:
        mi_list=l[1:]
        print(mi_list)
        break

for item in mi_list:
         q = item
         for row in movies:
             f=list(row)
             if f[0]==q:
                 mdict={
                 "isbn":f[1],
                 "authors":f[2],
                 "original_publication_year":f[3],
                 "title":f[4],
                 "language_code":f[5],
                 "average_rating" :f[6],
                 "image_url":f[7] }
                # print(mdict)
                 meow.append(mdict)
print(meow)
