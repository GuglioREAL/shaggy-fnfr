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
		{x = 1239, y = 956, width = 157, height = 154, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 140: H0000
		{x = 1428, y = 851, width = 50, height = 64, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 150: H tail0000
		{x = 417, y = 1339, width = 50, height = 44, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 145: H hold0000
		{x = 10, y = 279, width = 236, height = 232, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 141: H confirm0000
		{x = 266, y = 279, width = 236, height = 232, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 142: H confirm0001
		{x = 1804, y = 749, width = 214, height = 211, offsetX = -11, offsetY = -10, offsetWidth = 236, offsetHeight = 232}, -- 143: H confirm0002
		{x = 1804, y = 749, width = 214, height = 211, offsetX = -11, offsetY = -10, offsetWidth = 236, offsetHeight = 232}, -- 144: H confirm0003
		{x = 1215, y = 1303, width = 142, height = 140, offsetX = -3, offsetY = -3, offsetWidth = 149, offsetHeight = 146}, -- 146: H press0000
		{x = 1215, y = 1303, width = 142, height = 140, offsetX = -3, offsetY = -3, offsetWidth = 149, offsetHeight = 146}, -- 147: H press0001
		{x = 1403, y = 1171, width = 149, height = 146, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 148: H press0002
		{x = 1403, y = 1171, width = 149, height = 146, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 149: H press0003
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
