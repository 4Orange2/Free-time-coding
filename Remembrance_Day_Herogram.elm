-- Edit address line here!
addressLines = """
You were fighting
You were enduring
You were resilient
You were perseverant
You are outstanding

"""

-- Edit message here!
message = """
Dear Canadian military 
veteran, 

You are amazing!
Respect, 
Dignity, Responsibility. 
You have so many great 
character attributes. 
Your contributions will 
never be forgotten. 
Lest we forget. 

     Love,
     Rashed
"""

-- edit back of herogram here!
backOfHerogram model = 
  [ rect 192 128 |> filled (hsl (degrees model.time*30) 0.8 0.8)
  , rect  0.28 128 |> filled black |> move(2,0)
  , stamp |> rotate (degrees 3) |> move (70,33)
  , roundedRect 50 7 3 |> filled white |> addOutline (solid 0.25) black |> move (0,-50)
  , text "Click to flip Herogram." |> centered |> size 4.5 |> filled black |> move (0,-51)
  , circle 15 |> filled (hsl (degrees model.time*30) -1 0.8) |> move(30, 47)
  , peace_sign |> move(30, 47)
  , circle 15 |> filled (hsl (degrees model.time*30) -1 0.8) |> move(30, 15)
  , peace_sign |> move(30, 15)  
  ]

peace_sign = group [
  circle 10
  |> outlined (solid 1) (rgb 230 125 50)
  |> scale 1.5 
  , rect 1 15
  |> filled black
  |> move(0, 7)
  , rect 1 15
  |> filled black
  |> move(0, -7)
  |> rotate(degrees -60)
  , rect 1 15
  |> filled black
  |> move(0, -7)
  |> rotate(degrees 60)
  ]

-- edit the stamp here!
stampBackground = rgb 127 147 194
stamp = group 
  [ rect 32 40 |> filled white
  , rect 26 34 |> filled stampBackground
  , text "Waterloo" |> size 4 |> centered |> filled black |> move (0,13.25)
  , text "Ontario" |> size 4 |> centered |> filled black |> move (0,-16.25)
  , poppy
  |> scale 0.4
  ] 

curve_size = 20
width = 40
length = 25
length_2 = 40
width_2 = 25
coordinate = 18
shrink = 0.3
change_location_y = 30
change_location_x = 85

-- edit the front of the herogram here!
frontOfHerogram model =
                 [
                    rect 192 128 |> filled (rgb 255 210 210)
                    , poppy_yellow
                    |> rotate -model.time
                    |> move(-8, -14)
                    |> scaleX 0.9
                    |> scaleY 0.9
                    , poppy
                    |> rotate -model.time
                    |> move(30, 22)
                    |> scale (abs (sin model.time))
                    , poppy
                    |> rotate -model.time
                    |> move(-30, 22)
                    |> scale (abs (sin model.time))
                    , poppy
                    |> rotate -model.time
                    |> move(-30, -22)
                    |> scale (abs (sin model.time))
                    , poppy
                    |> rotate -model.time
                    |> move(-30, -22)
                    |> scale (abs (sin model.time))
                    , poppy
                    |> rotate -model.time
                    |> move(30, -22)
                    |> scale (abs (sin model.time))
                    , airplane_1
                    |> rotate -model.time
                    , airplane_2
                    |> rotate -model.time
                    |> move(-20, 20)
                    ,airplane_3
                    |> rotate -model.time  
                    |> move(-40, 40)
                    , ship_1
                    |> rotate -model.time
                    |> move(70, 0)
                    , ship_2
                    |> rotate -model.time
                    |> move(-70, 0)
                    , circle 15
                    |> filled (hsl (degrees model.time*40) 1 0.8) |> move(-60, 40)
                    , circle 15
                    |> filled (hsl (degrees model.time*40) 1 0.8) |> move(60, -40)
                    , circle 15
                    |> filled (hsl (degrees model.time*40) 1 0.8) |> move(60, 40)
                    , circle 15
                    |> filled (hsl (degrees model.time*40) 1 0.8) |> move(-60, -40)
                    , peace_sign
                    |> move(-60, -40)
                    , peace_sign
                    |> move(-60, 40)
                    ,peace_sign
                    |> move(60, -40)
                    , peace_sign
                    |> move(60, 40)
                    -- colour changing poppy #1
                    , roundedRect length_2 width_2 curve_size 
                    |> filled (hsl (degrees model.time*40) -2 0.8)
                    |> move (0, coordinate)
                    |> scale shrink
                    |> move(change_location_x, change_location_y)
                    ,
                    roundedRect length width curve_size
                    |> filled (hsl (degrees model.time*40) -2 0.8)
                    |> move (coordinate * -1, 0)
                    |> scale shrink
                    |> move(change_location_x, change_location_y)
                    ,
                    roundedRect length_2 width_2 curve_size
                    |> filled (hsl (degrees model.time*40) -2 0.8)
                    |> move (0, coordinate * -1)
                    |> scale shrink
                    |> move(change_location_x, change_location_y)
                    ,
                    roundedRect length width curve_size 
                    |> filled (hsl (degrees model.time*40) -2 0.8)
                    |> move (coordinate, 0)
                    |> scale shrink
                    |> move(change_location_x, change_location_y)
                    ,
                    circle 13
                    |> filled (hsl (degrees model.time*40) 3 0.2)
                    |> scale shrink
                    |> move(change_location_x, change_location_y)
                    , circle 1
                    |> filled white
                    |> scale shrink
                    |> move(change_location_x, change_location_y)
                    -- colour changing poppy #2
                    , roundedRect length_2 width_2 curve_size 
                    |> filled (hsl (degrees model.time*40) -2 0.8)
                    |> move (0, coordinate)
                    |> scale shrink
                    |> move(change_location_x, change_location_y - 20)
                    ,
                    roundedRect length width curve_size
                    |> filled (hsl (degrees model.time*40) -2 0.8)
                    |> move (coordinate * -1, 0)
                    |> scale shrink
                    |> move(change_location_x, change_location_y - 20)
                    ,
                    roundedRect length_2 width_2 curve_size
                    |> filled (hsl (degrees model.time*40) -2 0.8)
                    |> move (0, coordinate * -1)
                    |> scale shrink
                    |> move(change_location_x, change_location_y - 20)
                    ,
                    roundedRect length width curve_size 
                    |> filled (hsl (degrees model.time*40) -2 0.8)
                    |> move (coordinate, 0)
                    |> scale shrink
                    |> move(change_location_x, change_location_y - 20)
                    ,
                    circle 13
                    |> filled (hsl (degrees model.time*40) 3 0.2)
                    |> scale shrink
                    |> move(change_location_x, change_location_y - 20)
                    , circle 1
                    |> filled white
                    |> scale shrink
                    |> move(change_location_x, change_location_y - 20)
                    -- colour changing poppy 3
                    , roundedRect length_2 width_2 curve_size 
                    |> filled (hsl (degrees model.time*40) -2 0.8)
                    |> move (0, coordinate)
                    |> scale shrink
                    |> move(change_location_x, change_location_y - 40)
                    ,
                    roundedRect length width curve_size
                    |> filled (hsl (degrees model.time*40) -2 0.8)
                    |> move (coordinate * -1, 0)
                    |> scale shrink
                    |> move(change_location_x, change_location_y - 40)
                    ,
                    roundedRect length_2 width_2 curve_size
                    |> filled (hsl (degrees model.time*40) -2 0.8)
                    |> move (0, coordinate * -1)
                    |> scale shrink
                    |> move(change_location_x, change_location_y - 40)
                    ,
                    roundedRect length width curve_size 
                    |> filled (hsl (degrees model.time*40) -2 0.8)
                    |> move (coordinate, 0)
                    |> scale shrink
                    |> move(change_location_x, change_location_y - 40)
                    ,
                    circle 13
                    |> filled (hsl (degrees model.time*40) 3 0.2)
                    |> scale shrink
                    |> move(change_location_x, change_location_y - 40)
                    , circle 1
                    |> filled white
                    |> scale shrink
                    |> move(change_location_x, change_location_y - 40)
                    -- colour changing poppy 4
                    , roundedRect length_2 width_2 curve_size 
                    |> filled (hsl (degrees model.time*40) -2 0.8)
                    |> move (0, coordinate)
                    |> scale shrink
                    |> move(change_location_x, change_location_y - 60)
                    ,
                    roundedRect length width curve_size
                    |> filled (hsl (degrees model.time*40) -2 0.8)
                    |> move (coordinate * -1, 0)
                    |> scale shrink
                    |> move(change_location_x, change_location_y - 60)
                    ,
                    roundedRect length_2 width_2 curve_size
                    |> filled (hsl (degrees model.time*40) -2 0.8)
                    |> move (0, coordinate * -1)
                    |> scale shrink
                    |> move(change_location_x, change_location_y - 60)
                    ,
                    roundedRect length width curve_size 
                    |> filled (hsl (degrees model.time*40) -2 0.8)
                    |> move (coordinate, 0)
                    |> scale shrink
                    |> move(change_location_x, change_location_y - 60)
                    ,
                    circle 13
                    |> filled (hsl (degrees model.time*40) 3 0.2)
                    |> scale shrink
                    |> move(change_location_x, change_location_y - 60)
                    , circle 1
                    |> filled white
                    |> scale shrink
                    |> move(change_location_x, change_location_y - 60)
                    -- colour changing poppy group 2 #5
                    , roundedRect length_2 width_2 curve_size 
                    |> filled (hsl (degrees model.time*40) -2 0.8)
                    |> move (0, coordinate)
                    |> scale shrink
                    |> move(change_location_x * -1, change_location_y - 60)
                    ,
                    roundedRect length width curve_size
                    |> filled (hsl (degrees model.time*40) -2 0.8)
                    |> move (coordinate * -1, 0)
                    |> scale shrink
                    |> move(change_location_x * -1, change_location_y - 60)
                    ,
                    roundedRect length_2 width_2 curve_size
                    |> filled (hsl (degrees model.time*40) -2 0.8)
                    |> move (0, coordinate * -1)
                    |> scale shrink
                    |> move(change_location_x * -1, change_location_y - 60)
                    ,
                    roundedRect length width curve_size 
                    |> filled (hsl (degrees model.time*40) -2 0.8)
                    |> move (coordinate, 0)
                    |> scale shrink
                    |> move(change_location_x * -1, change_location_y - 60)
                    ,
                    circle 13
                    |> filled (hsl (degrees model.time*40) 3 0.2)
                    |> scale shrink
                    |> move(change_location_x * -1, change_location_y - 60)
                    , circle 1
                    |> filled white
                    |> scale shrink
                    |> move(change_location_x * -1, change_location_y - 60)
                    -- Poppy 5
                    , roundedRect length_2 width_2 curve_size 
                    |> filled (hsl (degrees model.time*40) -2 0.8)
                    |> move (0, coordinate)
                    |> scale shrink
                    |> move(change_location_x * -1, change_location_y - 40)
                    ,
                    roundedRect length width curve_size
                    |> filled (hsl (degrees model.time*40) -2 0.8)
                    |> move (coordinate * -1, 0)
                    |> scale shrink
                    |> move(change_location_x * -1, change_location_y - 40)
                    ,
                    roundedRect length_2 width_2 curve_size
                    |> filled (hsl (degrees model.time*40) -2 0.8)
                    |> move (0, coordinate * -1)
                    |> scale shrink
                    |> move(change_location_x * -1, change_location_y - 40)
                    ,
                    roundedRect length width curve_size 
                    |> filled (hsl (degrees model.time*40) -2 0.8)
                    |> move (coordinate, 0)
                    |> scale shrink
                    |> move(change_location_x * -1, change_location_y - 40)
                    ,
                    circle 13
                    |> filled (hsl (degrees model.time*40) 3 0.2)
                    |> scale shrink
                    |> move(change_location_x * -1, change_location_y - 40)
                    , circle 1
                    |> filled white
                    |> scale shrink
                    |> move(change_location_x * -1, change_location_y - 40)
                    -- poppy 6
                    , roundedRect length_2 width_2 curve_size 
                    |> filled (hsl (degrees model.time*40) -2 0.8)
                    |> move (0, coordinate)
                    |> scale shrink
                    |> move(change_location_x * -1, change_location_y - 20)
                    ,
                    roundedRect length width curve_size
                    |> filled (hsl (degrees model.time*40) -2 0.8)
                    |> move (coordinate * -1, 0)
                    |> scale shrink
                    |> move(change_location_x * -1, change_location_y - 20)
                    ,
                    roundedRect length_2 width_2 curve_size
                    |> filled (hsl (degrees model.time*40) -2 0.8)
                    |> move (0, coordinate * -1)
                    |> scale shrink
                    |> move(change_location_x * -1, change_location_y - 20)
                    ,
                    roundedRect length width curve_size 
                    |> filled (hsl (degrees model.time*40) -2 0.8)
                    |> move (coordinate, 0)
                    |> scale shrink
                    |> move(change_location_x * -1, change_location_y - 20)
                    ,
                    circle 13
                    |> filled (hsl (degrees model.time*40) 3 0.2)
                    |> scale shrink
                    |> move(change_location_x * -1, change_location_y - 20)
                    , circle 1
                    |> filled white
                    |> scale shrink
                    |> move(change_location_x * -1, change_location_y - 20)
                    -- poppy 8
                    , roundedRect length_2 width_2 curve_size 
                    |> filled (hsl (degrees model.time*40) -2 0.8)
                    |> move (0, coordinate)
                    |> scale shrink
                    |> move(change_location_x * -1, change_location_y)
                    ,
                    roundedRect length width curve_size
                    |> filled (hsl (degrees model.time*40) -2 0.8)
                    |> move (coordinate * -1, 0)
                    |> scale shrink
                    |> move(change_location_x * -1, change_location_y)
                    ,
                    roundedRect length_2 width_2 curve_size
                    |> filled (hsl (degrees model.time*40) -2 0.8)
                    |> move (0, coordinate * -1)
                    |> scale shrink
                    |> move(change_location_x * -1, change_location_y)
                    ,
                    roundedRect length width curve_size 
                    |> filled (hsl (degrees model.time*40) -2 0.8)
                    |> move (coordinate, 0)
                    |> scale shrink
                    |> move(change_location_x * -1, change_location_y)
                    ,
                    circle 13
                    |> filled (hsl (degrees model.time*40) 3 0.2)
                    |> scale shrink
                    |> move(change_location_x * -1, change_location_y)
                    , circle 1
                    |> filled white
                    |> scale shrink
                    |> move(change_location_x * -1, change_location_y)
                    , great_job
                    |> move (0, 37 * sin (2 * model.time))
                    , great_job
                    |> move (60 * sin (2 * model.time), -50)
                    , great_job
                    |> move (60 * sin (2 * model.time), 50)
                    
                  ]

great_job = group [
 text "Thank you!" 
 |> centered
 |> size 16
 |> filled darkGreen
 ]


-- filled (hsl (degrees model.time*40) -2 0.8)
-- filled (hsl (degrees model.time*40) 3 0.2)

-- look at this link: https://guide.elm-lang.org/types/reading_types.html 

poppy = group [  
   roundedRect length_2 width_2 curve_size 
   |> filled red
   |> move (0, coordinate)
   |> rotate(degrees 0)
   ,
   roundedRect length width curve_size
   |> filled red
   |> move (coordinate * -1, 0)
   ,
   roundedRect length_2 width_2 curve_size
   |> filled red
   |> move (0, coordinate * -1)
   ,
   roundedRect length width curve_size 
   |> filled red
   |> move (coordinate, 0)
   ,
    circle 13
   |> filled black
   , circle 1
   |> filled white
 ]
 
poppy_yellow = group [  roundedRect length_2 width_2 curve_size 
   |> filled blue
   |> move (0, coordinate)
   |> rotate(degrees 0)
   ,
   roundedRect length width curve_size
   |> filled blue
   |> move (coordinate * -1, 0)
   ,
   roundedRect length_2 width_2 curve_size
   |> filled blue
   |> move (0, coordinate * -1)
   ,
   roundedRect length width curve_size 
   |> filled blue
   |> move (coordinate, 0)
   ,
    circle 13
   |> filled yellow
   , circle 1
   |> filled white
 ]

airplane_1 = group [ roundedRect 45 10 5
   |> filled white
   |> move(-50, 50)
   |> rotate(degrees 30)
  , 
  triangle 10
    |> filled black
    |> move(-74, 26)
  , 
  triangle 10
    |> filled black
    |> move(-24, 60)
    |> rotate(degrees 60)
 ]
 
airplane_2 = group [ roundedRect 45 10 5
   |> filled white
   |> move(-50, 50)
   |> rotate(degrees 30)
  , 
  triangle 10
    |> filled black
    |> move(-74, 26)
  , 
  triangle 10
    |> filled black
    |> move(-24, 60)
    |> rotate(degrees 60)
    ]

airplane_3 = group [ roundedRect 45 10 5
   |> filled white
   |> move(-50, 50)
   |> rotate(degrees 30)
  , 
  triangle 10
    |> filled black
    |> move(-74, 26)
  , 
  triangle 10
    |> filled black
    |> move(-24, 60)
    |> rotate(degrees 60)
 ]

ship_1 = group [ 
  roundedRect 40 20 5
    |> filled black
  ,
  circle 4
    |> filled yellow
    |> move(-13, 0)
  ,
  circle 4
    |> filled yellow
    |> move(-4, 0)
  ,
  circle 4
    |> filled yellow
    |> move(5, 0)
  ,
  circle 4
    |> filled yellow
    |> move(14, 0)
  ,
  roundedRect 15 15 5
    |> filled black
    |> move(0, 15)
  ]

ship_2 = group [ 
  roundedRect 40 20 5
    |> filled black
  ,
  circle 4
    |> filled yellow
    |> move(-13, 0)
  ,
  circle 4
    |> filled yellow
    |> move(-4, 0)
  ,
  circle 4
    |> filled yellow
    |> move(5, 0)
  ,
  circle 4
    |> filled yellow
    |> move(14, 0)
  ,
  roundedRect 15 15 5
    |> filled black
    |> move(0, 15)
  ]
