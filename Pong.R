library(magrittr)

# Ball at starting position
ball <-
  data.frame(
    x.pos = 5,
    y.pos = 5
  )

ball.x.direction <-
  sample(
    x = c(-1,1),
    size = 1
  )


ball.y.direction <-
  sample(
    x = c(-1,0,1),
    size = 1
  )

player.one <- 4:6

player.one.direction <- -1

player.two <- 4:6

player.two.direction <- 0

i <- 1
### | es como decir or
### while == cuando sigue una condición
##### i es las veces que la bola va a chocar
while( ball$x.pos > 0 & ball$x.pos < 10 & i < 100 ) {

  ball$x.pos <-
    ball$x.pos + ball.x.direction

  ball$y.pos <-
    ball$y.pos + ball.y.direction

  if( ball$y.pos == 9) {
    ball.y.direction <- -1
  }

  if( ball$y.pos == 1) {
    ball.y.direction <- 1
  }

  if(ball$x.pos == 9) {
    if (ball$y.pos %in% player.two) {
      ball.x.direction <- -1
    }
  }

  if(ball$x.pos == 1) {
    if (ball$y.pos %in% player.one) {
      ball.x.direction <- 1
      if(player.one.direction == 0)
        ball.y.direction <- 0
      if(player.one.direction == 1)
        ball.y.direction <- 1
      if(player.one.direction == -1)
        ball.y.direction <- -1
    }
  }

  if(ball$x.pos == 9) {
    if (ball$y.pos %in% player.two) {
      ball.x.direction <- 1
      if(player.two.direction == 0)
        ball.y.direction <- 0
      if(player.two.direction == 1)
        ball.y.direction <- 1
      if(player.two.direction == -1)
        ball.y.direction <- -1
    }
  }

  player.one.direction = sample(c(-1,0,1),1)
  player.two.direction = sample(c(-1,0,1),1)

  player.one <-
    player.one + player.one.direction

  player.two <-
    player.two + player.two.direction



  i <- i+1


  if(ball$x.pos %in% c(1,9)){
    print(
      paste("Xpos: ", ball$x.pos, "Ypos: ", ball$y.pos)
    )
    print(
      paste("PlayerOne:")
      )
    print(
      paste(player.one)
    )
    print(
      paste(player.one.direction)
    )
     print(
       paste("PlayerTwo:")
     )
     print(
      paste(player.two)
      )
     print(
       paste(player.two.direction)
     )
  }
}

# algo


