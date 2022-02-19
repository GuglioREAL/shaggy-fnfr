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

return graphics.newSprite(
	images.notes,
	{
		{x = 187, y = 1119, width = 153, height = 157, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 186: arrowLEFT0000
		{x = 488, y = 767, width = 200, height = 208, offsetX = -7, offsetY = -3, offsetWidth = 217, offsetHeight = 220}, -- 2: A confirm0000
		{x = 708, y = 767, width = 200, height = 204, offsetX = -7, offsetY = -3, offsetWidth = 217, offsetHeight = 220}, -- 3: A confirm0001
		{x = 251, y = 531, width = 217, height = 220, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 4: A confirm0002
		{x = 251, y = 531, width = 217, height = 220, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 5: A confirm0003
		{x = 1738, y = 1327, width = 140, height = 142, offsetX = -3, offsetY = -3, offsetWidth = 146, offsetHeight = 149}, -- 7: A press0000
		{x = 1738, y = 1327, width = 140, height = 142, offsetX = -3, offsetY = -3, offsetWidth = 146, offsetHeight = 149}, -- 8: A press0001
		{x = 1572, y = 1171, width = 146, height = 149, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 9: A press0002
		{x = 1572, y = 1171, width = 146, height = 149, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 10: A press0003
		{x = 1823, y = 425, width = 50, height = 64, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 27: A tail0000
		{x = 1788, y = 980, width = 154, height = 157, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 1: A0000
		{x = 1962, y = 980, width = 50, height = 44, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 6: A hold0000
	},
	{
		["off"] = {start = 1, stop = 1, speed = 0, offsetX = 0, offsetY = 0},
		["confirm"] = {start = 2, stop = 5, speed = 24, offsetX = 0, offsetY = 0},
		["press"] = {start = 6, stop = 9, speed = 24, offsetX = 0, offsetY = 0},
		["end"] = {start = 10, stop = 10, speed = 0, offsetX = 0, offsetY = 0},
		["on"] = {start = 11, stop = 11, speed = 0, offsetX = 0, offsetY = 0},
		["hold"] = {start = 12, stop = 12, speed = 0, offsetX = 0, offsetY = 0}
	},
	"off",
	false
)
