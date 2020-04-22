 --Cargar Texto
splash = Image.load("ms0:/PSP/GAME/AStore/img/intro.png")


--PREPARAR VARIABLES
oldpad = Controls.read()
opcion = 1
System.currentDirectory("ms0:/PSP/GAME/AStore/")

function dmenu()
    if opcion == 1 then screen:blit(0,0,splash); end
 end
--Bucle principal del programa
while true do

System.memclean()
    screen:clear()
    pad = Controls.read()
    dmenu()

    if pad:cross() and not oldpad:cross() then System.webbrowser("ms0:/PSP/GAME/AStore","http://www.alexvo.epizy.com/")
    end
    if pad:circle() and not oldpad:circle() then System.Quit()
    end

	System.memclean()
    screen.waitVblankStart()
    screen.flip()
    oldpad = pad
end