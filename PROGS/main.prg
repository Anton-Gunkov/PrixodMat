ZOOM WINDOW (_SCREEN.NAME) MAX
_SCREEN.CAPTION = 'PRIXOD'

SET DELETED ON
SET DATE TO BRITISH
SET CENTURY ON
SET SAFETY OFF

PUBLIC m.gcPoisk, m.lPoisk, m.cMonthYear, m.lSprav, m.lPrixRasx
PUBLIC m.nVidtr, m.nVidtr_add && для справочника Vidtr
PUBLIC M.nVKod, M.nVKod_add && для работы в прих/расх справочника видтр

m.cMonthYear = 'в щщи с вертушки'
m.lSprav = .F.
m.lPrixRasx = .F.
DO menus\main_menu.mpr
ON SHUTDOWN DO progs\onexit.prg
READ EVENTS

