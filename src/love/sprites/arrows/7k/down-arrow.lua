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
		{x = 191, y = 771, width = 157, height = 154, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 28: B0000
		{x = 1893, y = 425, width = 50, height = 64, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 38: B tail0000
		{x = 1962, y = 1044, width = 50, height = 44, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 33: B hold0000
		{x = 552, y = 10, width = 238, height = 235, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 29: B confirm0000
		{x = 810, y = 10, width = 238, height = 235, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 30: B confirm0001
		{x = 1008, y = 521, width = 221, height = 217, offsetX = -8, offsetY = -10, offsetWidth = 238, offsetHeight = 235}, -- 31: B confirm0002
		{x = 1008, y = 521, width = 221, height = 217, offsetX = -8, offsetY = -10, offsetWidth = 238, offsetHeight = 235}, -- 32: B confirm0003
		{x = 10, y = 1299, width = 142, height = 140, offsetX = -4, offsetY = -2, offsetWidth = 149, offsetHeight = 146}, -- 34: B press0000
		{x = 10, y = 1299, width = 142, height = 140, offsetX = -4, offsetY = -2, offsetWidth = 149, offsetHeight = 146}, -- 35: B press0001
		{x = 1046, y = 1169, width = 149, height = 146, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 36: B press0002
		{x = 1046, y = 1169, width = 149, height = 146, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 37: B press0003
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
