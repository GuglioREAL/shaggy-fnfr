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
		{x = 1593, y = 998, width = 157, height = 153, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 189: arrowUP0000
		{x = 191, y = 945, width = 157, height = 154, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 39: C0000
		{x = 1963, y = 425, width = 50, height = 64, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 49: C tail0000
		{x = 1962, y = 1108, width = 50, height = 44, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 44: C hold0000
		{x = 1311, y = 265, width = 236, height = 232, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 40: C confirm0000
		{x = 1567, y = 266, width = 236, height = 232, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 41: C confirm0001
		{x = 1804, y = 518, width = 214, height = 211, offsetX = -11, offsetY = -10, offsetWidth = 236, offsetHeight = 232}, -- 42: C confirm0002
		{x = 1804, y = 518, width = 214, height = 211, offsetX = -11, offsetY = -10, offsetWidth = 236, offsetHeight = 232}, -- 43: C confirm0003
		{x = 183, y = 1296, width = 144, height = 141, offsetX = -5, offsetY = -4, offsetWidth = 153, offsetHeight = 150}, -- 45: C press0000
		{x = 183, y = 1296, width = 144, height = 141, offsetX = -5, offsetY = -4, offsetWidth = 153, offsetHeight = 150}, -- 46: C press0001
		{x = 1770, y = 1157, width = 153, height = 150, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 47: C press0002
		{x = 1770, y = 1157, width = 153, height = 150, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 48: C press0003
	},
	{
		["off"] = {start = 1, stop = 1, speed = 0, offsetX = 0, offsetY = 0},
		["on"] = {start = 2, stop = 2, speed = 0, offsetX = 0, offsetY = 0},
		["end"] = {start = 3, stop = 3, speed = 0, offsetX = 0, offsetY = 0},
		["hold"] = {start = 4, stop = 4, speed = 0, offsetX = 0, offsetY = 0},
		["confirm"] = {start = 5, stop = 8, speed = 24, offsetX = 0, offsetY = 0},
		["press"] = {start = 9, stop = 12, speed = 24, offsetX = 0, offsetY = 0}
	},
	"off",
	false
)
