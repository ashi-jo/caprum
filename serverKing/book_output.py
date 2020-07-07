import pandas as pd
import sqlite3
# import settings.py

def book_output(name):
    meow=[]
    mi_list=[]
    a = 0
    conn=sqlite3.connect("bookdatabaseop.sqlite")
    b=conn.cursor()
    b.execute("SELECT * FROM booksfinal")
    movies=b.fetchall()
    con=sqlite3.connect('BOOKSCOREdata.sqlite')
    # con = conn2
    c=con.cursor()
    c.execute("SELECT * FROM OP_books")
    data=c.fetchall()
    for row in movies:
        g = list(row)
        if g[4] == name:
            a = int(g[0])
            break


    for row in data:
        l=list(row)
        m=l[0]
        m=int(m)
        if m==a:
            mi_list=l[1:]
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
                    meow.append(mdict)
    return meow
