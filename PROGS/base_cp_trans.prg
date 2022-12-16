SET SAFETY OFF 
loShell = CREATEOBJECT("Wscript.Shell") 
DELETE FILE OLDBase\1251\*.*

loShell.Run('OLDBase\dos2win.exe OLDBase\MAT1.dbf OLDBase\1251\mat1.dbf')
loShell.Run('OLDBase\dos2win.exe OLDBase\POST.DBF OLDBase\1251\post.dbf')
loShell.Run('OLDBase\dos2win.exe OLDBase\R_ON.dbf OLDBase\1251\r_on.dbf')
loShell.Run('OLDBase\dos2win.exe OLDBase\UPR3.dbf OLDBase\1251\upr3.dbf')
loShell.Run('OLDBase\dos2win.exe OLDBase\PPJT.DBF OLDBase\1251\ppjt.dbf')
loShell.Run('OLDBase\dos2win.exe OLDBase\PR_MAT.DBF OLDBase\1251\pr_mat.dbf')
loShell.Run('OLDBase\dos2win.exe OLDBase\VIDTR.dbf OLDBase\1251\vidtr.dbf')
