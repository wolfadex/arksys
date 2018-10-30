# This is just an example to get you started. A typical library package
# exports the main API in this file. Note that you cannot rename this file
# but you can remove it if you wish.
import ulid

type
  Entity = array[2, string]

type
  World = object
    entities: seq[Entity]

proc createWorld*(): World =
  World(entities: @[])

proc createEntity*(world: World, name: string): string =
  var newEntity: Entity = [ulid(), name]
  world.entities & @[newEntity]
  newEntity[0]






proc add*(x, y: int): int =
  ## Adds two files together.
  return x + y