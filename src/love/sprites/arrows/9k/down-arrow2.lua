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
		{x = 1416, y = 998, width = 157, height = 153, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 185: arrowDOWN0000
		{x = 10, y = 948, width = 157, height = 154, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 129: G0000
		{x = 928, y = 851, width = 50, height = 64, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 139: G tail0000
		{x = 347, y = 1339, width = 50, height = 44, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 134: G hold0000
		{x = 1068, y = 10, width = 238, height = 235, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 130: G confirm0000
		{x = 1326, y = 10, width = 238, height = 235, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 131: G confirm0001
		{x = 10, y = 531, width = 221, height = 217, offsetX = -8, offsetY = -10, offsetWidth = 238, offsetHeight = 235}, -- 132: G confirm0002
		{x = 10, y = 531, width = 221, height = 217, offsetX = -8, offsetY = -10, offsetWidth = 238, offsetHeight = 235}, -- 133: G confirm0003
		{x = 360, y = 1177, width = 144, height = 142, offsetX = -4, offsetY = -4, offsetWidth = 153, offsetHeight = 150}, -- 135: G press0000
		{x = 360, y = 1177, width = 144, height = 142, offsetX = -4, offsetY = -4, offsetWidth = 153, offsetHeight = 150}, -- 136: G press0001
		{x = 537, y = 1168, width = 153, height = 150, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 137: G press0002
		{x = 537, y = 1168, width = 153, height = 150, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 138: G press0003
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
