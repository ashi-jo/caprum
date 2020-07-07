import pandas as pd
import sqlite3

def tv_output(name):
    mi_list = []
    meow = []    
    a = 0
    conn=sqlite3.connect("tv_database_final.sqlite")
    b=conn.cursor()
    b.execute("SELECT * FROM tvdata")
    movies=b.fetchall()
    con=sqlite3.connect('tv_scores_final.sqlite')
    c=con.cursor()
    c.execute("SELECT * FROM scores_tv2")
    data=c.fetchall()
    for row in movies:
        g=list(row)
        if g[1]==name:
            a=int(g[0])
            break
    a = a-1


    for row in data:
        l=list(row)
        m=l[0]
        m=int(m)
        if m==a:
            mi_list=l[1:]
            break
    for item in mi_list:
        q = int(item.split(',')[0].split('(')[1])
        for row in movies:
                f=list(row)
                m=f[0]
                if m == q:
                    mdict = {
                        "title": f[1],
                        "cast": f[2],
                        "country": f[3],
                        "release_year": f[4],
                        "genre": f[5],
                        "description":f[6],
                        "URL":f[7]
                    }
                    meow.append(mdict)
    return(meow)
