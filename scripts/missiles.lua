--       _________ __                 __                               
--      /   _____//  |_____________ _/  |______     ____  __ __  ______
--      \_____  \\   __\_  __ \__  \\   __\__  \   / ___\|  |  \/  ___/
--      /        \|  |  |  | \// __ \|  |  / __ \_/ /_/  >  |  /\___ \ 
--     /_______  /|__|  |__|  (____  /__| (____  /\___  /|____//____  >
--             \/                  \/          \//_____/            \/ 
--  ______________________                           ______________________
--			  T H E   W A R   B E G I N S
--	   Stratagus - A free fantasy real time strategy game engine
--
--	missiles.ccl	-	Define the used missiles.
--
--	(c) Copyright 1998-2002 by Lutz Sammer and Fabrice Rossi
--
--      This program is free software; you can redistribute it and/or modify
--      it under the terms of the GNU General Public License as published by
--      the Free Software Foundation; either version 2 of the License, or
--      (at your option) any later version.
--  
--      This program is distributed in the hope that it will be useful,
--      but WITHOUT ANY WARRANTY; without even the implied warranty of
--      MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--      GNU General Public License for more details.
--  
--      You should have received a copy of the GNU General Public License
--      along with this program; if not, write to the Free Software
--      Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
--
--	$Id$

--	NOTE: the missiles could be sorted for races, but did this make sense?

--=============================================================================
--	Define missiles
--
--	(define-missile-type ident "file", file, "size", {width height}, "frames", n
--		'fired-sound fsound "impact-sound", hit-sound 'class name
--		'sleep sleep, "speed", speed 'impact-missile missile)
--

DefineMissileType("missile-lightning",
  "file", "missiles/lightning.png", "size", {32, 32}, "frames", 30, "num-directions", 5,
  "class", "missile-class-point-to-point-with-hit", "sleep", 1, "speed", 16, "range", 1,
 "draw-level", 50)

DefineMissileType("missile-griffon-hammer",
  "file", "missiles/gryphon_hammer.png", "size", {32, 32}, "frames", 15, "num-directions", 5,
  "impact-sound", "fireball hit",
  "class", "missile-class-point-to-point-bounce", "num-bounces", 3, "sleep", 1, "speed", 16, "range", 2,
  "draw-level", 50, "impact-missile", "missile-explosion")

DefineMissileType("missile-dragon-breath",
  "file", "missiles/dragon_breath.png", "size", {32, 32}, "frames", 5, "num-directions", 5,
  "impact-sound", "fireball hit",
  "class", "missile-class-point-to-point-bounce", "num-bounces", 3, "sleep", 1, "speed", 16, "range", 2,
  "draw-level", 70, "impact-missile", "missile-explosion")

DefineMissileType("missile-fireball",
  "file", "missiles/fireball.png", "size", {32, 32}, "frames", 5, "num-directions", 5,
  "impact-sound", "fireball hit",
  "draw-level", 50, "class", "missile-class-point-to-point-bounce", "num-bounces", 5, "sleep", 1, "speed", 16, "range", 1,
  "impact-missile", "missile-explosion")

DefineMissileType("missile-flame-shield",
  "file", "missiles/flame_shield.png", "size", {32, 48}, "frames", 6, "num-directions", 1,
  "draw-level", 50, "class", "missile-class-flame-shield", "sleep", 2, "speed", 4, "range", 1)

DefineMissileType("missile-blizzard",
  "file", "missiles/blizzard.png", "size", {32, 32}, "frames", 4, "num-directions", 1,
  "class", "missile-class-point-to-point-with-hit", "sleep", 2, "speed", 8, "range", 1,
  "draw-level", 100)

DefineMissileType("missile-death-and-decay",
  "file", "missiles/death_and_decay.png", "size", {32, 32}, "frames", 8, "num-directions", 1,
  "draw-level", 100, "class", "missile-class-stay", "sleep", 1, "speed", 0, "range", 1)

DefineMissileType("missile-big-cannon",
  "file", "missiles/big_cannon.png", "size", {16, 16}, "frames", 20, "num-directions", 5,
  "draw-level", 50, "impact-sound", "explosion",
  "class", "missile-class-point-to-point", "sleep", 1, "speed", 16, "range", 2,
  "impact-missile", "missile-cannon-tower-explosion")

DefineMissileType("missile-exorcism",
  "file", "missiles/exorcism.png", "size", {48, 48}, "frames", 10, "num-directions", 1,
  "draw-level", 50, "class", "missile-class-point-to-point", "sleep", 1, "speed", 16, "range", 1)

DefineMissileType("missile-heal-effect",
  "file", "missiles/heal_effect.png", "size", {48, 48}, "frames", 10, "num-directions", 1,
  "draw-level", 50, "class", "missile-class-stay", "sleep", 1, "speed", 16, "range", 1)

DefineMissileType("missile-touch-of-death",
  "file", "missiles/touch_of_death.png", "size", {32, 32}, "frames", 30, "num-directions", 5,
  "draw-level", 50, "class", "missile-class-point-to-point-with-hit", "sleep", 1, "speed", 16, "range", 1)

DefineMissileType("missile-rune",
  "file", "missiles/rune.png", "size", {16, 16}, "frames", 4, "num-directions", 1,
  "draw-level", 20, "class", "missile-class-land-mine", "sleep", 5, "speed", 16, "range", 1,
  "impact-missile", "missile-explosion", "can-hit-owner")

DefineMissileType("missile-whirlwind",
  "file", "missiles/tornado.png", "size", {56, 56}, "frames", 4, "num-directions", 1,
  "draw-level", 50, "class", "missile-class-whirlwind", "sleep", 1, "speed", 2, "range", 2)

DefineMissileType("missile-catapult-rock",
  "file", "missiles/catapult_rock.png", "size", {32, 32}, "frames", 15, "num-directions", 5,
  "impact-sound", "explosion",
  "draw-level", 50, "class", "missile-class-parabolic", "sleep", 1, "speed", 16, "range", 2,
  "impact-missile", "missile-impact", "splash-factor", 4)

DefineMissileType("missile-ballista-bolt",
  "file", "missiles/ballista_bolt.png", "size", {64, 64}, "frames", 5, "num-directions", 5,
  "draw-level", 50, "impact-sound", "explosion",
  "class", "missile-class-parabolic", "sleep", 1, "speed", 16, "range", 2,
  "impact-missile", "missile-impact", "splash-factor", 4)

DefineMissileType("missile-arrow",
  "file", "missiles/arrow.png", "size", {40, 40}, "frames", 5, "num-directions", 5,
  "draw-level", 50, "impact-sound", "bow hit",
  "class", "missile-class-point-to-point", "sleep", 1, "speed", 32, "range", 0)

DefineMissileType("missile-axe",
  "file", "missiles/axe.png", "size", {32, 32}, "frames", 15, "num-directions", 5,
  "impact-sound", "bow hit",
  "draw-level", 50, "class", "missile-class-point-to-point", "sleep", 1, "speed", 32, "range", 0)

DefineMissileType("missile-submarine-missile",
  "file", "missiles/submarine_missile.png", "size", {40, 40}, "frames", 5, "num-directions", 5,
  "impact-sound", "explosion",
  "draw-level", 50, "class", "missile-class-point-to-point", "sleep", 1, "speed", 16, "range", 1,
  "impact-missile", "missile-impact")

DefineMissileType("missile-turtle-missile",
  "file", "missiles/turtle_missile.png", "size", {40, 40}, "frames", 5, "num-directions", 5,
  "draw-level", 50, "impact-sound", "explosion",
  "class", "missile-class-point-to-point", "sleep", 1, "speed", 16, "range", 1,
  "impact-missile", "missile-impact")

DefineMissileType("missile-small-fire",
  "file", "missiles/small_fire.png", "size", {32, 48}, "frames", 6, "num-directions", 1,
  "draw-level", 45, "class", "missile-class-fire", "sleep", 8, "speed", 16, "range", 1)

DefineMissileType("missile-big-fire",
  "file", "missiles/big_fire.png", "size", {48, 48}, "frames", 10, "num-directions", 1,
  "draw-level", 45, "class", "missile-class-fire", "sleep", 8, "speed", 16, "range", 1)

DefineMissileType("missile-impact",
  "file", "missiles/ballista-catapult_impact.png", "size", {48, 48}, "frames", 10, "num-directions", 1,
  "draw-level", 50, "class", "missile-class-stay", "sleep", 1, "speed", 16, "range", 1)

DefineMissileType("missile-normal-spell",
  "file", "missiles/normal_spell.png", "size", {32, 32}, "frames", 6, "num-directions", 1,
  "draw-level", 50, "class", "missile-class-stay", "sleep", 5, "speed", 0, "range", 1)

DefineMissileType("missile-explosion",
  "file", "missiles/explosion.png", "size", {64, 64}, "frames", 20, "num-directions", 1,
  "draw-level", 50, "class", "missile-class-stay", "sleep", 1, "speed", 16, "range", 1)

DefineMissileType("missile-small-cannon",
  "file", "missiles/cannon.png", "size", {32, 32}, "frames", 15, "num-directions", 5,
  "draw-level", 50, "impact-sound", "explosion",
  "class", "missile-class-parabolic", "sleep", 1, "speed", 16, "range", 1,
  "impact-missile", "missile-cannon-explosion")

DefineMissileType("missile-cannon-explosion",
  "file", "missiles/cannon_explosion.png", "size", {32, 32}, "frames", 4, "num-directions", 1,
  "draw-level", 50, "class", "missile-class-stay", "sleep", 1, "speed", 16, "range", 1)

DefineMissileType("missile-cannon-tower-explosion",
  "file", "missiles/cannon-tower_explosion.png", "size", {32, 32}, "frames", 4, "num-directions", 1,
  "draw-level", 50, "class", "missile-class-stay", "sleep", 1, "speed", 16, "range", 1)

DefineMissileType("missile-daemon-fire",
  "file", "missiles/daemon_fire.png", "size", {32, 32}, "frames", 15, "num-directions", 5,
  "draw-level", 70, "impact-sound", "fireball hit",
  "class", "missile-class-point-to-point", "sleep", 1, "speed", 16, "range", 1)

DefineMissileType("missile-green-cross",
  "file", "missiles/green_cross.png", "size", {32, 32}, "frames", 4, "num-directions", 1,
  "draw-level", 150, "class", "missile-class-cycle-once", "sleep", 1, "speed", 16, "range", 1)

DefineMissileType("missile-red-cross",
  "file", "missiles/red_cross.png", "size", {32, 32}, "frames", 4, "num-directions", 1,
  "draw-level", 5, "class", "missile-class-cycle-once", "sleep", 1, "speed", 16, "range", 1)

DefineMissileType("missile-none",
  "size", {32, 32}, "draw-level", 50,
  "class", "missile-class-none", "sleep", 1, "speed", 16, "range", 1)

DefineMissileType("missile-blizzard-hit",
  "file", "missiles/blizzard.png", "size", {32, 32}, "frames", 4, "num-directions", 1,
  "draw-level", 60, "class", "missile-class-stay", "sleep", 2, "speed", 8, "range", 1)

DefineMissileType("missile-death-coil",
  "file", "missiles/touch_of_death.png", "size", {32, 32}, "frames", 30, "num-directions", 5,
  "draw-level", 50, "class", "missile-class-death-coil", "sleep", 1, "speed", 16, "range", 1)

DefineMissileType("missile-hit",
  "size", {15, 15}, "draw-level", 150,
  "class", "missile-class-hit", "sleep", 1, "speed", 1, "range", 16)

DefineMissileType("missile-critter-explosion",
  "file", "missiles/catapult_rock.png", "size", {32, 32}, "frames", 15, "num-directions", 5,
  "impact-sound", "explosion", "draw-level", 50,
  "class", "missile-class-hit", "sleep", 1, "speed", 16, "range", 2,
  "impact-missile", "missile-impact", "can-hit-owner")

DefineBurningBuilding(
  {"percent", 0, "missile", "missile-big-fire"},
  {"percent", 50, "missile", "missile-small-fire"},
  {"percent", 75 } -- no missile
)
