import pandas as pd
import sqlite3

def movies_output(name):
    meow=[]
    a = 0
    mi_list = []
    p=name[-1]
    p2=p.isspace()
    if p2==False:
        strlen = len(name)+1
        name = name.ljust(strlen)
    conn=sqlite3.connect("movies_database.sqlite")
    b=conn.cursor()
    b.execute("SELECT * FROM movies_data ")
    movies=b.fetchall()
    con=sqlite3.connect('movies_scores.sqlite')
    c=con.cursor()
    c.execute("SELECT * FROM opdata")
    data=c.fetchall()
    for row in movies:
        g=list(row)
        if g[2]==name:
            a=int(g[0])
            break
    for row in data:
        l=list(row)
        m=int(l[0])
        if m==a:
            mi_list=l[1:]
            break

    for item in mi_list:
        q = (int(item.split(',')[0].split('(')[1]))
        for row in movies:
                f=list(row)
                if f[0]==q:
                    mdict={
                    "title":f[2],
                    "year":f[3],
                    "genres":f[4],
                    "imageurl":f[5],
                    "plot":f[6]
                    }
                    meow.append(mdict)
    return(meow)
