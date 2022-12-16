*--------------Проверка даты и соотв. файла---------------
m.cMonthYear = SUBSTR(DTOS(DATE( )), 1, 6)

DO CASE 
   CASE FILE('Data\'+m.cMonthYear+'-rasxod.dbf')=.T.
        USE 'Data\'+m.cMonthYear+'-rasxod.dbf' IN 0 ALIAS RasxodBase
       
   CASE FILE('Data\'+m.cMonthYear+'-rasxod.dbf')=.F.
        COPY FILE 'Data\'+'CLR_Prixod.dbf' TO 'Data\'+m.cMonthYear+'-rasxod.dbf'
        USE 'Data\'+m.cMonthYear+'-rasxod.dbf' IN 0 ALIAS RasxodBase
ENDCASE