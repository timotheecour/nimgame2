import
  nimgame2/nimgame,
  nimgame2/entity,
  nimgame2/input

type
  Cursor* = ref object of Entity
    collidedWith*: seq[string]


proc init*(entity: Cursor) =
  entity.initEntity()
  entity.tags.add("Cursor")
  entity.pos = mouse.abs
  entity.collidedWith = @[]


proc newCursor*(): Cursor =
  result = new Cursor
  result.init()


method update*(entity: Cursor, elapsed: float) =
  entity.updateEntity(elapsed)
  entity.collidedWith = @[]
  entity.pos = mouse.abs


method onCollide*(entity: Cursor, target: Entity) =
  if target.tags.len > 0:
    entity.collidedWith.add(target.tags[0])

