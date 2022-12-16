CLOSE DATABASES
CLOSE TABLES 

SET DATE BRITISH
SET CENTURY ON

CLEAR 

PUBLIC m.i, m.cNewDate

OPEN DATABASE data/prixod EXCLUSIVE
USE pr_mat IN 0
GO TOP 

FOR i=1 TO 9259
    SELECT pr_mat
    m.cNewDate = CTOD(SUBSTR(pr_mat.dat_p, 1, 2)+"/"+SUBSTR(pr_mat.dat_p, 4)+"/"+SUBSTR(TTOC(pr_mat.date1, 1), 1, 4))
    replace pr_mat.date1 with m.cNewDate
    SKIP 1 IN pr_mat
    
NEXT

BROWSE
