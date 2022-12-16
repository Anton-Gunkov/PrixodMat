TRY 
   SELECT spisok
   USE 
CATCH
ENDTRY

TRY 
   SELECT spisok_o
   USE 
CATCH
ENDTRY

TRY 
   SELECT spisok_act
   USE 
CATCH 
FINALLY
ENDTRY


*----------------------------------------------------
USE dwork\spisok IN 0 &&AGAIN

USE dwork\spisok_o IN 0 &&AGAIN
INDEX ON kod TO DWork\kod
SELECT spisok_o
USE 

USE dwork\spisok_act IN 0 &&AGAIN
INDEX ON kobekt TO DWork\kobekt 
SELECT spisok_act
USE 


USE dwork\spisok_o INDEX DWork\kod.idx ORDER kod IN 0 &&AGAIN
USE dwork\spisok_act INDEX DWork\kobekt.idx ORDER kobekt IN 0 &&AGAIN

SELECT spisok 
SET RELATION TO zak INTO spisok_o
*----------------------------------------------------
