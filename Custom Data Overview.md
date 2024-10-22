# Custom Player Data

# Custom Item Data
## sc.fast_charge:true
The item can be used with right-click, the "casting time" is fast
## sc.medium_charge:true
The item can be used with right-click, the "casting time" is medium
## sc.item.{item name}
The unqiue identifier custom data with the unique item name to idenfity the item 
## sc.eq.ring:true
The item is an equippable ring 
## sc.ring.id:{ring id}
Holds the id of the ring, see **Ring Ids** for more

# Ring Ids
The Ring Ids are the unique ids that can be used to identify which ring a player wears on what slot. 
The ids are saved as numbers in the player scores:
- sc.ring_slot.1
- sc.ring_slot.2
- sc.ring_slot.3
- sc.ring_slot.4
A **0** in a slot means that slot is empty

| ID | Ring Name
| - | -
| 1 | Silver Lightfoot Ring