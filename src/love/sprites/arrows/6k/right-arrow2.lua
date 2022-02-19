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
		{x = 10, y = 1122, width = 153, height = 157, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 187: arrowRIGHT0000
		{x = 1056, y = 992, width = 154, height = 157, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 151: I0000
		{x = 368, y = 855, width = 50, height = 64, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 184: I tail0000
		{x = 682, y = 1339, width = 50, height = 44, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 156: I hold0000
		{x = 805, y = 265, width = 233, height = 236, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 152: I confirm0000
		{x = 1058, y = 265, width = 233, height = 236, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 153: I confirm0001
		{x = 1557, y = 764, width = 211, height = 214, offsetX = -11, offsetY = -11, offsetWidth = 233, offsetHeight = 236}, -- 154: I confirm0002
		{x = 1557, y = 764, width = 211, height = 214, offsetX = -11, offsetY = -11, offsetWidth = 233, offsetHeight = 236}, -- 155: I confirm0003
		{x = 524, y = 1338, width = 138, height = 141, offsetX = -3, offsetY = -7, offsetWidth = 148, offsetHeight = 151}, -- 157: I press0000
		{x = 524, y = 1338, width = 138, height = 141, offsetX = -3, offsetY = -7, offsetWidth = 148, offsetHeight = 151}, -- 158: I press0001
		{x = 878, y = 1169, width = 148, height = 151, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 159: I press0002
		{x = 878, y = 1169, width = 148, height = 151, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 160: I press0003
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
