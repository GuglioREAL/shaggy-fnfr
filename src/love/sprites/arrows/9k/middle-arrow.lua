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
		{x = 1239, y = 767, width = 169, height = 169, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 188: arrowSPACE0000
		{x = 1837, y = 236, width = 169, height = 169, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 84: E0000
		{x = 1428, y = 767, width = 50, height = 64, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 94: E tail0000
		{x = 1943, y = 1236, width = 50, height = 44, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 89: E hold0000
		{x = 10, y = 10, width = 251, height = 249, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 85: E confirm0000
		{x = 281, y = 10, width = 251, height = 249, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 86: E confirm0001
		{x = 1557, y = 518, width = 227, height = 226, offsetX = -9, offsetY = -17, offsetWidth = 251, offsetHeight = 249}, -- 87: E confirm0002
		{x = 1557, y = 518, width = 227, height = 226, offsetX = -9, offsetY = -17, offsetWidth = 251, offsetHeight = 249}, -- 88: E confirm0003
		{x = 1230, y = 1130, width = 153, height = 153, offsetX = -4, offsetY = -3, offsetWidth = 161, offsetHeight = 160}, -- 90: E press0000
		{x = 1230, y = 1130, width = 153, height = 153, offsetX = -4, offsetY = -3, offsetWidth = 161, offsetHeight = 160}, -- 91: E press0001
		{x = 10, y = 768, width = 161, height = 160, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 92: E press0002
		{x = 10, y = 768, width = 161, height = 160, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 93: E press0003
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
