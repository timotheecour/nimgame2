import
  nimgame2/nimgame,
  nimgame2/settings,
  mainscene

game = newGame()
if game.init(w = 640, h = 480, title = "Nimgame 2: Demo 13 (TileMap)"):
  showInfo = true
  game.scene = newMainScene()
  game.run()

