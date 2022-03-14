/*
Se necessário mover o pokemon
*/
CoordMode, Pixel, Window
PixelSearch, FoundX, FoundY, 545, 604, 610, 621, 0x30153E, 0, Fast RGB  ; >> Encontrar pixel da confusão <<
If (ErrorLevel = 0)
{
    Sleep, 5000
}
CoordMode, Pixel, Window
PixelSearch, FoundX, FoundY, 547, 605, 613, 623, 0x662D85, 0, Fast RGB  ; >> Encontrar pixel da confusão <<
If (ErrorLevel = 0)
{
    Sleep, 5000
}
CoordMode, Pixel, Window
PixelSearch, FoundX, FoundY, 628, 350, 721, 428, 0x0099FF, 0, Fast RGB  ; >> Encontrar pixel de vida azul claro <<
If (ErrorLevel)
{
    CoordMode, Pixel, Window
    PixelSearch, FoundX, FoundY, 630, 346, 712, 429, 0x00329B, 0, Fast RGB  ; >> Encontrar pixel de vida azul escuro <<
    If (ErrorLevel)
    {
        CoordMode, Pixel, Window
        PixelSearch, FoundX, FoundY, 630, 347, 725, 427, 0x0067CD, 0, Fast RGB  ; >> Encontrar pixel de vida azul <<
        If (ErrorLevel)
        {
            CoordMode, Pixel, Window
            PixelSearch, FoundX, FoundY, 632, 344, 721, 433, 0x000A41, 0, Fast RGB  ; >> Encontrar pixel de vida azul muito escuro <<
            If (ErrorLevel)
            {
                Sleep, 2000
                Click, 1308, 180 Right, 1  ; >> Clicar no botão de ordem <<
                Sleep, 10
                Click, 691, 488 Left, 1  ; >> Clicar no local onde deseja que o pokemon vá <<
                Sleep, 10
                Sleep, 4000
                Goto, Loot
            }
        }
    }
}
Click, 693, 379 Left, 1  ; >> Clicar no pé <<
Sleep, 10
Sleep, 100
Goto, preLoot
