<h1 align=center>Projet de morpion en RUBY (POO)</h1>
<h3 align=center>Click on the screenshot to launch the file in REPL.it</h3>

<p align=center>If the run command is empty, fill the command with: ruby app.rb</p>

<a href=https://repl.it/@MatthieuBachele/S4J4morpion><img id="im" src=https://github.com/matthieuBA/S4J4_morpion/blob/master/screenshot.png></a>

 ruby app.rb


controlle avec des coordonées 


                                A1  || A2 ||  A3   
                              -----------------
                                B1  || B2 ||  B3  
                              -----------------
                                C1  || C2 ||  C3   
                                
                                ou avec le pavé numerique 

                                7  ||  8  ||  9  
                              -----------------
                                4  ||  5  ||  6  
                              -----------------
                                1  ||  2  ||  3  

                    entrer le nom du joueur 1
                    > 1

                    entrer le nom du joueur 2
                    > 2


                                  ||    ||    
                              -----------------
                                  ||    ||    
                              -----------------
                                  ||    ||    

                    c'est le tour du 1
                    > C1


                                  ||    ||    
                              -----------------
                                  ||    ||    
                              -----------------
                               ❌ ||    ||    

                    c'est le tour du 2
                    > C2


                                  ||    ||    
                              -----------------
                                  ||    ||    
                              -----------------
                               ❌ || 🔘 ||    

                    c'est le tour du 1
                    > C3


                                  ||    ||    
                              -----------------
                                  ||    ||    
                              -----------------
                               ❌ || 🔘 || ❌ 

                    c'est le tour du 2
                    > B1


                                  ||    ||    
                              -----------------
                               🔘 ||    ||    
                              -----------------
                               ❌ || 🔘 || ❌ 

                    c'est le tour du 1
                    > A2


                                  || ❌ ||    
                              -----------------
                               🔘 ||    ||    
                              -----------------
                               ❌ || 🔘 || ❌ 

                    c'est le tour du 2
                    > B2


                                  || ❌ ||    
                              -----------------
                               🔘 || 🔘 ||    
                              -----------------
                               ❌ || 🔘 || ❌ 

                    c'est le tour du 1
                    > A1


                               ❌ || ❌ ||    
                              -----------------
                               🔘 || 🔘 ||    
                              -----------------
                               ❌ || 🔘 || ❌ 

                    c'est le tour du 2
                    > A3


                               ❌ || ❌ || 🔘 
                              -----------------
                               🔘 || 🔘 ||    
                              -----------------
                               ❌ || 🔘 || ❌ 

                    c'est le tour du 1
                    > B3


                               ❌ || ❌ || 🔘 
                              -----------------
                               🔘 || 🔘 || ❌ 
                              -----------------
                               ❌ || 🔘 || ❌ 


                    1                    with ❌ won 0 times
                    2                    with 🔘 won 0 times
                    ex-aequo                         1 times

                    voulez vous continuer ? yes/no (leave empty will continue)
                    > no



                    Perfect Egality on  1 matche(s)

                    GAME OVER




