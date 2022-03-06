myShapes model = [
                 trees 5 -200 -120 40 20
                 , trees 5 40 -120 40 20
                 ]

trees counter x_cord y_cord add_x add_y = 
                 if
                 counter < 0
                 then
                 group []
                 else group [
                 coralLessBranches 20.00
                 |> group
                 |> move(x_cord + add_x, y_cord + add_y)
                 |> scale(0.5)
                 , trees (counter - 1) (add_x + 25) (add_y + 10) x_cord y_cord
                 ]
 

coralLessBranches size = [ polygon[ ( -0.5 * size, 0 ), ( 0.5 * size, 0 ), (0.3 * size , 3 * size ), ( -0.25 * size, 3.1 * size )]
                             |> if size < 15 then
                                   if size < 6 then
                                     if size < 4 then
                                       if size < 2 then
                                       filled (rgb 75.00 150.00 0.00) -- green
                                       else
                                       filled (rgb 128.00 128.00 0.00) -- heart gold
                                     else
                                     filled (rgb 128.00 85.00 0.00) -- chocolate
                               else
                               filled (rgb 128.00 42.00 0.00) -- dark chocolate
                               else
                               filled (rgb 150.00 75.00 0.00) -- brown
                         ]
                         
                         ++
                         ( if
                             size > 0.30
                           then
                             [ coralLessBranches ( 0.55 * size )
                                 |> group
                                 |> rotate (degrees -40.00)
                                 |> move  
                                   (( 0.10 * size )
                                   ,( 2.90 * size )
                                   )
                                  
                             , coralLessBranches ( 0.30 * size )
                                 |> group
                                 |> rotate (degrees -40.00)
                                 |> move  
                                   (( 0.30 * size )
                                   ,( 1.50 * size )
                                   )
                               
                             , coralLessBranches ( 0.55 * size )
                                 |> group
                                 |> rotate (degrees 40.00)
                                 |> move  
                                   (( -0.10 * size )
                                   ,( 3.00 * size )
                                   )
   
                             ]

                           else
                             []
                         )     

type Msg = Tick Float GetKeyState

update msg model = case msg of
                     Tick t _ -> { time = t }

init = { time = 0 }
