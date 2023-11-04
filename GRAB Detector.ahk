Loop,
{
   ; Makes it so it uses the pixels for the entire screen and not only for the active window.
   CoordMode, Pixel, Screen
   ; First two variables store the found position, next 4 as the search area in pixels, then the file.
   ImageSearch, OutputVarX, OutputVarY, 0, 0, 2000, 2000, *100 C:\Users\tomkr\OneDrive\Desktop\AHK Scripts\Assets\bonedrop.png

   ; If it isn't above 0, then it means nothing matched.
   if (OutputVarX > 0) { 

       SendInput GRAB
       SendInput {Enter}
       Sleep, 5000

   }
}