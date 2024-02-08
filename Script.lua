--[[
The following functions have been exposed to lua:
setBackground(string aPath) sets the background to the texture in the folder textures.
createButton(string area name which the player enters, string context); adds a button to the current screen
createTextfield(string context); adds a textfield to the top of the screen.
CLS(); clears the screen.
exitGame(); exits the game.
playSound(string path to sound)
]]--


function story(aName)
if(aName == "start") then
CLS()
createTextfield("start", "Je bent een jonge Albert Heijn medewerker\ndie weer een dodelijke werkdag tegemoed gaat")
createButton("Albert Heijn", "Loop de winkel in")
createButton("Naar Huis", "Ga naar huis")
setBackground("Albert Heijn.JPG")
elseif(aName == "Albert Heijn") then
CLS()
createButton("Inklokken", "Klok in")

--[Dat Mag Niet]
elseif(aName == "Naar Huis") then
CLS()
createTextfield("start", "MAG NIET")
createButton("start", "Terug naar begin")
setBackground("Albert Heijn.JPG")

--[Ingeklokt]
elseif(aName == "Inklokken") then
CLS()
createButton("Naar Teamleider", "Ga naar je teamleider")
createButton("Even Praten", "Ga nog even met je collega's praten")
setBackground("Albert Heijn.JPG")

--[Met collega's praten]
elseif(aName == "Even Praten") then
CLS()
createTextfield("start", "Je manager ziet je en JE BENT ONTSLAGEN")
createButton("start", "Opnieuw Beginnen")
setBackground("Kantine.JPG")

--[Naar teamleider gegaan]
elseif(aName == "Naar Teamleider") then
CLS()
createTextfield("Naar Teamleider", "Je teamleider geeft je drie keuzes")
createButton("Zuivel vullen", "Ga zuivel vullen")
createButton("Spiegelen", "Ga spiegelen")
createButton("Actie", "Ga Actie restanten vullen")
setBackground("Teamleider.JPG")

--[Game voor Actie]
elseif(aName == "Actie") then
CLS()
createTextfield("Actie", "Je kan de wijn niet vinden wat doe je?")
createButton("kutvraag", "Zoek je teamleider in het magazijn en vraag het aan hem")
createButton("blijf zoeken", "Blijf zoeken en hoop dat je het vind")
setBackground("Wijn.PNG")

--[Blijven zoeken]
elseif(aName == "blijf zoeken") then
CLS()
createTextfield("blijf zoeken", "Je hebt het gevonden maar je laat een fles vallen\nWat doe je nu?")
createButton("kutvraag", "Ga naar het magazijn om de schoonmaakmachine te halen")
setBackground("Wijn.PNG")

--[Game voor Spiegelen]
elseif(aName == "Spiegelen") then
CLS()
createTextfield("start", "Je teamleider lacht je uit\nwie wilt er nou spiegelen man hij ontslaat je")
createButton("start", "Opnieuw")
setBackground("Teamleider.JPG")

--[Game voor zuivel vullen]
elseif(aName == "Zuivel vullen") then
CLS()
createTextfield("Zuivel vullen", "je ziet 4 karren staan")
createButton("Beginnen met vullen", "Pak een kar en begin met vullen")
createButton("Op telefoon", "Ga nog even op je telefoon")
setBackground("Zuivel.JPG")

--[Nog even op de telefoon]
elseif(aName == "Op telefoon") then
CLS()
createTextfield("Op telefoon", "begin met vullen luie hond")
createButton("Beginnen met vullen", "Pak een kar en ga vullen")
setBackground("Telefoon.JPG")

--[Begin met vullen]
elseif(aName == "Beginnen met vullen") then
CLS()
createTextfield("Beginnen met vullen", "Een kutklant vraagt of jullie nog Elke Melk hebben")
createButton("kutvraag", "Ga in het magazijn kijken")
createButton("ONTSLAGEN", "Zeg dat ze de tieves mag krijgen")
setBackground("Zuivel.JPG")

--[ontslagen]
elseif(aName == "ONTSLAGEN") then
CLS()
createTextfield("ONTSLAGEN", "VERKEERDE KEUS JE BENT ONTSLAGEN")
createButton("Zuivel vullen", "Opnieuw Beginnen met zuivel")
createButton("start", "Opnieuw Beginnen")
setBackground("Teamleider.JPG")


--[achter kijken]
elseif(aName == "kutvraag") then
CLS()
createTextfield("Dat is raar de lichten zijn uit en iedereen is weg")
createButton("onderzoeken", "Loop door het magazijn om te onderzoeken")
createButton("deuren dicht", "Ren gillend weg")
setBackground("Magazijn.JPG")

--[De deuren gaan dicht]
elseif(aName == "deuren dicht") then
CLS()
createTextfield("deuren dicht", "De deuren sluiten opeens en je kan er niet doorheen")
createButton("onderzoeken", "Onderzoek wat er gebeurd")
setBackground("Magazijn.JPG")
playSound("door.WAV")


--[Op onderzoek uit]
elseif(aName == "onderzoeken") then
CLS()
createTextfield("onderzoeken", "Je ziet dat er beweging is in de koeling")
createButton("Kijken", "Loop de koeling in")
createButton("Rennen", "Ren weg")
createButton("verstoppen", "Verstop je in het teamleider kantoor")
setBackground("Magazijn.JPG")
playSound("footstep.WAV")


--[dood door zombie]
elseif(aName == "dood door zombie") then
CLS()
createTextfield("dood door zombie", "De Zombie teamleider heeft je vermoord")
createButton("start", "Opnieuw beginnen")
createButton("Zuivel vullen", "Opnieuw beginnen met zuivel vullen")
createButton("Actie", "Opnieuw beginnen met actie vullen")
setBackground("Zombie.PNG")

--[Koeling in]
elseif(aName == "Kijken") then
CLS()
createTextfield("Kijken", "Je ziet je teamleider die veranderd is in\n een zombie hij heeft je vermoord")
createButton("dood door zombie", "Naar dood scherm")
setBackground("Zombie.PNG")


--[Wegrennen]
elseif(aName == "Rennen") then
CLS()
createTextfield("Rennen", "Tijdens het wegrennen word je geplet\n door een vallend stuk van het dak")
createButton("dood door zombie", "Naar dood scherm")
setBackground("Zombie.PNG")


--[verstoppen]
elseif(aName == "verstoppen") then
CLS()
createTextfield("verstoppen", "Je ziet je teamleider als zombie uit de koeling komen\n hij loopt het kantoor in maar gelukkig ziet hij jouw niet")
createButton("vechten", "val hem aan")
createButton("wegsluipen", "probeer ongezien weg te sluipen")
setBackground("Zombie.PNG")
playSound("footstep.WAV")

--[wegsluipen]
elseif(aName == "wegsluipen") then
CLS()
createTextfield("wegsluipen", "De zombie ziet je en verrast je en je gaat dood")
createButton("dood door zombie", "Naar dood scherm")
setBackground("Zombie.PNG")


--[vechten]
elseif(aName == "vechten") then
CLS()
createTextfield("vechten", "de zombie is vrij zwak en je haalt hem neer\n met welk wapen ga je hem afmaken")
createButton("computer", "Sla hem neer met de computer")
createButton("teddybeer", "Sla hem neer met een speelgoedteddybeer")
createButton("schaar", "knip ze lul eraf met een schaar")
setBackground("Zombie.PNG")

--[computer slaan]
elseif(aName == "computer") then
CLS()
createTextfield("computer", "Je bent zwak dus je kan geen computer tillen\n Je gaat dood")
createButton("dood door zombie", "Naar dood scherm")
setBackground("Zombie.PNG")


--[teddybeer slaan]
elseif(aName == "teddybeer") then
CLS()
createTextfield("teddybeer", "je wil serieus een zombie met een teddybeer vermoorden\n tuurlijk ga je dood")
createButton("dood door zombie", "Naar dood scherm")
setBackground("Zombie.PNG")


--[schaar knippen]
elseif(aName == "schaar") then
CLS()
createTextfield("schaar", "Het lukt je knipt ze lul eraf en hij jankt als een baby\n daarna valt hij dood neer door verdriet")
createButton("start", "Opnieuw")
createButton("afsluiten", "Game afsluiten")
setBackground("Gewonnen.JPG")

--[afsluiten]
elseif(aName == "afsluiten") then
exitGame()

end
end
