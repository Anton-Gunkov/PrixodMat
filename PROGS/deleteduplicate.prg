CLOSE DATABASES
CLOSE TABLES 

CLEAR 

PUBLIC m.i, m.x, m.n, m.cFind
m.i=0
m.x=0


OPEN DATABASE data/prixod EXCLUSIVE
USE vidtr IN 0
GO TOP 

FOR i=1 TO RECCOUNT()
    SELECT vidtr
    GO RECORD m.i
    m.cFind = vidtr.name_t
    m.n=0
    LOCATE FOR vidtr.name_t = m.cFind
    DO WHILE FOUND( )
    m.n=m.n+1
    IF m.n=2
       DELETE IN vidtr
       m.x=m.x+1
    ENDIF
    CONTINUE 
    ENDDO 
    
NEXT


? m.x
BROWSE
