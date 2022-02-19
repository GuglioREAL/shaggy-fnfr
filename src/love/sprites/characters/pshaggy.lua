--[[----------------------------------------------------------------------------
This file is part of Friday Night Funkin' Rewritten

Copyright (C) 2021  HTV04

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
------------------------------------------------------------------------------]]

-- NOTE: Pico's sprites are flipped horizontally as an enemy
return graphics.newSprite(
	love.graphics.newImage(graphics.imagePath("characters/pshaggy")),
	-- Automatically generated from Pico_FNF_assetss.xml
	{
		{x = 600, y = 0, width = 570, height = 613, offsetX = -32, offsetY = -24, offsetWidth = 602, offsetHeight = 658}, -- 3: pshaggy_down0000
		{x = 1170, y = 0, width = 567, height = 652, offsetX = 0, offsetY = -6, offsetWidth = 602, offsetHeight = 658}, -- 4: pshaggy_down0001
		{x = 1737, y = 0, width = 560, height = 654, offsetX = 0, offsetY = -3, offsetWidth = 602, offsetHeight = 658}, -- 5: pshaggy_down0002
		{x = 2297, y = 0, width = 550, height = 657, offsetX = -6, offsetY = 0, offsetWidth = 602, offsetHeight = 658}, -- 6: pshaggy_down0003
		{x = 2847, y = 0, width = 547, height = 657, offsetX = -9, offsetY = 0, offsetWidth = 602, offsetHeight = 658}, -- 7: pshaggy_down0004
		{x = 2847, y = 0, width = 547, height = 657, offsetX = -9, offsetY = 0, offsetWidth = 602, offsetHeight = 658}, -- 8: pshaggy_down0005
		{x = 2847, y = 0, width = 547, height = 657, offsetX = -9, offsetY = 0, offsetWidth = 602, offsetHeight = 658}, -- 9: pshaggy_down0006
		{x = 2847, y = 0, width = 547, height = 657, offsetX = -9, offsetY = 0, offsetWidth = 602, offsetHeight = 658}, -- 10: pshaggy_down0007
		{x = 2847, y = 0, width = 547, height = 657, offsetX = -9, offsetY = 0, offsetWidth = 602, offsetHeight = 658}, -- 11: pshaggy_down0008
		{x = 2847, y = 0, width = 547, height = 657, offsetX = -9, offsetY = 0, offsetWidth = 602, offsetHeight = 658}, -- 12: pshaggy_down0009
		{x = 600, y = 0, width = 570, height = 613, offsetX = -32, offsetY = -24, offsetWidth = 602, offsetHeight = 658}, -- 3: pshaggy_down0000
		{x = 3394, y = 0, width = 319, height = 803, offsetX = -11, offsetY = -1, offsetWidth = 330, offsetHeight = 804}, -- 13: pshaggy_idle0000
		{x = 3394, y = 0, width = 319, height = 803, offsetX = -11, offsetY = -1, offsetWidth = 330, offsetHeight = 804}, -- 14: pshaggy_idle0001
		{x = 3713, y = 0, width = 323, height = 799, offsetX = -3, offsetY = -1, offsetWidth = 330, offsetHeight = 804}, -- 15: pshaggy_idle0002
		{x = 3713, y = 0, width = 323, height = 799, offsetX = -3, offsetY = -1, offsetWidth = 330, offsetHeight = 804}, -- 16: pshaggy_idle0003
		{x = 4036, y = 0, width = 324, height = 799, offsetX = 0, offsetY = 0, offsetWidth = 330, offsetHeight = 804}, -- 17: pshaggy_idle0004
		{x = 4036, y = 0, width = 324, height = 799, offsetX = 0, offsetY = 0, offsetWidth = 330, offsetHeight = 804}, -- 18: pshaggy_idle0005
		{x = 4036, y = 0, width = 324, height = 799, offsetX = 0, offsetY = 0, offsetWidth = 330, offsetHeight = 804}, -- 19: pshaggy_idle0006
		{x = 4036, y = 0, width = 324, height = 799, offsetX = 0, offsetY = 0, offsetWidth = 330, offsetHeight = 804}, -- 20: pshaggy_idle0007
		{x = 4036, y = 0, width = 324, height = 799, offsetX = 0, offsetY = 0, offsetWidth = 330, offsetHeight = 804}, -- 21: pshaggy_idle0008
		{x = 4036, y = 0, width = 324, height = 799, offsetX = 0, offsetY = 0, offsetWidth = 330, offsetHeight = 804}, -- 22: pshaggy_idle0009
		{x = 3394, y = 0, width = 319, height = 803, offsetX = -11, offsetY = -1, offsetWidth = 330, offsetHeight = 804}, -- 13: pshaggy_idle0000
		{x = 3394, y = 0, width = 319, height = 803, offsetX = -11, offsetY = -1, offsetWidth = 330, offsetHeight = 804}, -- 14: pshaggy_idle0001
		{x = 3713, y = 0, width = 323, height = 799, offsetX = -3, offsetY = -1, offsetWidth = 330, offsetHeight = 804}, -- 15: pshaggy_idle0002
		{x = 3713, y = 0, width = 323, height = 799, offsetX = -3, offsetY = -1, offsetWidth = 330, offsetHeight = 804}, -- 16: pshaggy_idle0003
		{x = 5790, y = 0, width = 431, height = 750, offsetX = 0, offsetY = -25, offsetWidth = 431, offsetHeight = 793}, -- 33: pshaggy_right0000
		{x = 6221, y = 0, width = 398, height = 784, offsetX = -26, offsetY = -9, offsetWidth = 431, offsetHeight = 793}, -- 34: pshaggy_right0001
		{x = 6619, y = 0, width = 388, height = 790, offsetX = -29, offsetY = -2, offsetWidth = 431, offsetHeight = 793}, -- 35: pshaggy_right0002
		{x = 7007, y = 0, width = 379, height = 792, offsetX = -35, offsetY = 0, offsetWidth = 431, offsetHeight = 793}, -- 36: pshaggy_right0003
		{x = 7007, y = 0, width = 379, height = 792, offsetX = -35, offsetY = 0, offsetWidth = 431, offsetHeight = 793}, -- 37: pshaggy_right0004
		{x = 7007, y = 0, width = 379, height = 792, offsetX = -35, offsetY = 0, offsetWidth = 431, offsetHeight = 793}, -- 38: pshaggy_right0005
		{x = 7007, y = 0, width = 379, height = 792, offsetX = -35, offsetY = 0, offsetWidth = 431, offsetHeight = 793}, -- 39: pshaggy_right0006
		{x = 7007, y = 0, width = 379, height = 792, offsetX = -35, offsetY = 0, offsetWidth = 431, offsetHeight = 793}, -- 40: pshaggy_right0007
		{x = 7007, y = 0, width = 379, height = 792, offsetX = -35, offsetY = 0, offsetWidth = 431, offsetHeight = 793}, -- 41: pshaggy_right0008
		{x = 7007, y = 0, width = 379, height = 792, offsetX = -35, offsetY = 0, offsetWidth = 431, offsetHeight = 793}, -- 42: pshaggy_right0009
		{x = 5790, y = 0, width = 431, height = 750, offsetX = 0, offsetY = -25, offsetWidth = 431, offsetHeight = 793}, -- 33: pshaggy_right0000
		{x = 6221, y = 0, width = 398, height = 784, offsetX = -26, offsetY = -9, offsetWidth = 431, offsetHeight = 793}, -- 34: pshaggy_right0001
		{x = 6619, y = 0, width = 388, height = 790, offsetX = -29, offsetY = -2, offsetWidth = 431, offsetHeight = 793}, -- 35: pshaggy_right0002
		{x = 7007, y = 0, width = 379, height = 792, offsetX = -35, offsetY = 0, offsetWidth = 431, offsetHeight = 793}, -- 36: pshaggy_right0003
		{x = 7007, y = 0, width = 379, height = 792, offsetX = -35, offsetY = 0, offsetWidth = 431, offsetHeight = 793}, -- 37: pshaggy_right0004
		{x = 7007, y = 0, width = 379, height = 792, offsetX = -35, offsetY = 0, offsetWidth = 431, offsetHeight = 793}, -- 38: pshaggy_right0005
		{x = 7007, y = 0, width = 379, height = 792, offsetX = -35, offsetY = 0, offsetWidth = 431, offsetHeight = 793}, -- 39: pshaggy_right0006
		{x = 4360, y = 0, width = 400, height = 774, offsetX = 0, offsetY = -26, offsetWidth = 400, offsetHeight = 820}, -- 23: pshaggy_left0000
		{x = 4760, y = 0, width = 359, height = 814, offsetX = -18, offsetY = -4, offsetWidth = 400, offsetHeight = 820}, -- 24: pshaggy_left0001
		{x = 5119, y = 0, width = 338, height = 820, offsetX = -16, offsetY = 0, offsetWidth = 400, offsetHeight = 820}, -- 25: pshaggy_left0002
		{x = 5457, y = 0, width = 333, height = 819, offsetX = -16, offsetY = -1, offsetWidth = 400, offsetHeight = 820}, -- 26: pshaggy_left0003
		{x = 5457, y = 0, width = 333, height = 819, offsetX = -16, offsetY = -1, offsetWidth = 400, offsetHeight = 820}, -- 27: pshaggy_left0004
		{x = 5457, y = 0, width = 333, height = 819, offsetX = -16, offsetY = -1, offsetWidth = 400, offsetHeight = 820}, -- 28: pshaggy_left0005
		{x = 5457, y = 0, width = 333, height = 819, offsetX = -16, offsetY = -1, offsetWidth = 400, offsetHeight = 820}, -- 29: pshaggy_left0006
		{x = 5457, y = 0, width = 333, height = 819, offsetX = -16, offsetY = -1, offsetWidth = 400, offsetHeight = 820}, -- 30: pshaggy_left0007
		{x = 5457, y = 0, width = 333, height = 819, offsetX = -16, offsetY = -1, offsetWidth = 400, offsetHeight = 820}, -- 31: pshaggy_left0008
		{x = 5457, y = 0, width = 333, height = 819, offsetX = -16, offsetY = -1, offsetWidth = 400, offsetHeight = 820}, -- 32: pshaggy_left0009
		{x = 4360, y = 0, width = 400, height = 774, offsetX = 0, offsetY = -26, offsetWidth = 400, offsetHeight = 820}, -- 23: pshaggy_left0000
		{x = 4760, y = 0, width = 359, height = 814, offsetX = -18, offsetY = -4, offsetWidth = 400, offsetHeight = 820}, -- 24: pshaggy_left0001
		{x = 5119, y = 0, width = 338, height = 820, offsetX = -16, offsetY = 0, offsetWidth = 400, offsetHeight = 820}, -- 25: pshaggy_left0002
		{x = 5457, y = 0, width = 333, height = 819, offsetX = -16, offsetY = -1, offsetWidth = 400, offsetHeight = 820}, -- 26: pshaggy_left0003
		{x = 5457, y = 0, width = 333, height = 819, offsetX = -16, offsetY = -1, offsetWidth = 400, offsetHeight = 820}, -- 27: pshaggy_left0004
		{x = 5457, y = 0, width = 333, height = 819, offsetX = -16, offsetY = -1, offsetWidth = 400, offsetHeight = 820}, -- 28: pshaggy_left0005
		{x = 5457, y = 0, width = 333, height = 819, offsetX = -16, offsetY = -1, offsetWidth = 400, offsetHeight = 820}, -- 29: pshaggy_left0006
		{x = 5727, y = 868, width = 500, height = 831, offsetX = 0, offsetY = -87, offsetWidth = 500, offsetHeight = 923}, -- 115: pshaggy_up0000
		{x = 6227, y = 868, width = 430, height = 897, offsetX = -35, offsetY = 0, offsetWidth = 500, offsetHeight = 923}, -- 116: pshaggy_up0001
		{x = 6657, y = 868, width = 494, height = 837, offsetX = -3, offsetY = -29, offsetWidth = 500, offsetHeight = 923}, -- 117: pshaggy_up0002
		{x = 7151, y = 868, width = 500, height = 832, offsetX = 0, offsetY = -40, offsetWidth = 500, offsetHeight = 923}, -- 118: pshaggy_up0003
		{x = 7151, y = 868, width = 500, height = 832, offsetX = 0, offsetY = -40, offsetWidth = 500, offsetHeight = 923}, -- 119: pshaggy_up0004
		{x = 7651, y = 868, width = 500, height = 832, offsetX = 0, offsetY = -58, offsetWidth = 500, offsetHeight = 923}, -- 120: pshaggy_up0005
		{x = 7651, y = 868, width = 500, height = 832, offsetX = 0, offsetY = -58, offsetWidth = 500, offsetHeight = 923}, -- 121: pshaggy_up0006
		{x = 0, y = 1765, width = 500, height = 832, offsetX = 0, offsetY = -86, offsetWidth = 500, offsetHeight = 923}, -- 122: pshaggy_up0007
		{x = 7651, y = 868, width = 500, height = 832, offsetX = 0, offsetY = -91, offsetWidth = 500, offsetHeight = 923}, -- 123: pshaggy_up0008
		{x = 7651, y = 868, width = 500, height = 832, offsetX = 0, offsetY = -91, offsetWidth = 500, offsetHeight = 923}, -- 124: pshaggy_up0009
		{x = 5727, y = 868, width = 500, height = 831, offsetX = 0, offsetY = -87, offsetWidth = 500, offsetHeight = 923}, -- 115: pshaggy_up0000
		{x = 6227, y = 868, width = 430, height = 897, offsetX = -35, offsetY = 0, offsetWidth = 500, offsetHeight = 923}, -- 116: pshaggy_up0001
		{x = 6657, y = 868, width = 494, height = 837, offsetX = -3, offsetY = -29, offsetWidth = 500, offsetHeight = 923}, -- 117: pshaggy_up0002
		{x = 7151, y = 868, width = 500, height = 832, offsetX = 0, offsetY = -40, offsetWidth = 500, offsetHeight = 923} -- 118: pshaggy_up0003
	},
	{
		["down"] = {start = 1, stop = 11, speed = 24, offsetX = -38, offsetY = -43},
		["idle"] = {start = 12, stop = 25, speed = 24, offsetX = 0, offsetY = 0},
		["left"] = {start = 26, stop = 42, speed = 24, offsetX = 83, offsetY = -5}, 
		["right"] = {start = 43, stop = 59, speed = 24, offsetX = -50, offsetY = 0}, 
		["up"] = {start = 60, stop = 73, speed = 24, offsetX = 27, offsetY = 10}
	},
	"idle",
	false
)
