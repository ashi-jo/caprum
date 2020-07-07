import pandas as pd
import sqlite3

def games_output(name):
    a = 0
    meow=[]
    mi_list = []
    conn=sqlite3.connect("gamedata.sqlite")
    b=conn.cursor()
    b.execute("SELECT * FROM gamesdata")
    games=b.fetchall()
    con=sqlite3.connect('gamescores.sqlite')
    c=con.cursor()
    c.execute("SELECT * FROM games_scores9")
    data=c.fetchall()
    for row in games:
        g = list(row)
        if g[1] == name:
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
            q = (int(item.split(',')[0].split('(')[1]))
            for row in games:
                f=list(row)
                if f[0]==q:
                    mdict={
                    "Name":f[1],
                    "Icon URL": f[2],
                    "Average User Rating": f[3],
                    "Price": f[4],
                    "Description": f[5],
                    "Developer": f[6],
                    "Age Rating":f[7],
                    "Languages":f[8],
                    "Genres":f[9]
                    }
                    meow.append(mdict)
    return meow

