import pandas as pd
import sqlite3
conn=sqlite3.connect("tv_database_final.sqlite")
b=conn.cursor()
b.execute("SELECT * FROM tvdata")
movies=b.fetchall()
con=sqlite3.connect('tv_scores_final.sqlite')
c=con.cursor()
c.execute("SELECT * FROM scores_tv2")
data=c.fetchall()
#print(data)
b='Apaches'

for row in movies:
    g=list(row)

   # print(g)
    if g[1]==b:
        a=g[0]
        break
#print(a)
a=int(a)
meow=[]

for row in data:
     l=list(row)
     m=l[0]
     m=int(m)
     if m==a:
        mi_list=l[1:]
       # print(mi_list)
        break
for item in mi_list:
    q = (int(item.split(',')[0].split('(')[1]))
   # print(q)
    q=int(q)
    for row in movies:
             f=list(row)
             #print(f[0])
             m=f[0]
             if m == q:
               # print(f)
                 mdict = {
                     "title": f[1],
                     "cast": f[2],
                     "country": f[3],
                     "release_year": f[4],
                     "genre": f[5],
                     "description":f[6],
                     "URL":f[7]
                 }
                 # print(mdict)
                 meow.append(mdict)
print(meow)

