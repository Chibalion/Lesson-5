-- Lesson 5

--Created by: Justin Richards
--Created on: Nov 2016
--Created for:ICS20
--Makes to buttons do things

--variables local to entire file
local aButton
local bButton

-- Use this function to perform your initial setup
function setup()
--setup display and drawing functions
    supportedOrientations(LANDSCAPE_ANY)  
    displayMode(FULLSCREEN)
    noFill()
    noSmooth()
    noStroke()
    pushStyle()
    
    music("A Hero's Quest:Tavern & Inn", true, 0.25)
    
    
    aButton = Button("Project:Blue Info Button", vec2(WIDTH/2, HEIGHT/2))
    bButton = Button("Project:Blue Cancel Button", vec2(WIDTH/3, HEIGHT/3))
end
     
function touched(touch)
    
    aButton:touched(touch)
    bButton:touched(touch)
    
    if (aButton.selected == true) then
        print("The button has been released")
        sound("A Hero's Quest:Attack Cast 2")
    end
    
    if (bButton.selected == true) then
        print("The second button has been released")
        sound("A Hero's Quest:Curse")
    end
end
-- This function gets called once every frame
function draw()
    
    --local variables
    
    -- This sets a dark background color 
    background(190, 0, 255, 255)

    aButton:draw()
    bButton:draw()
    
end

