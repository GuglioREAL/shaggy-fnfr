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
		{x = 1584, y = 10, width = 233, height = 236, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 96: F confirm0000
		{x = 552, y = 265, width = 233, height = 236, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 97: F confirm0001
		{x = 1008, y = 758, width = 211, height = 214, offsetX = -11, offsetY = -11, offsetWidth = 233, offsetHeight = 236}, -- 98: F confirm0002
		{x = 1008, y = 758, width = 211, height = 214, offsetX = -11, offsetY = -11, offsetWidth = 233, offsetHeight = 236}, -- 99: F confirm0003
		{x = 1046, y = 1335, width = 139, height = 141, offsetX = -4, offsetY = -4, offsetWidth = 148, offsetHeight = 151}, -- 101: F press0000
		{x = 1046, y = 1335, width = 139, height = 141, offsetX = -4, offsetY = -4, offsetWidth = 148, offsetHeight = 151}, -- 102: F press0001
		{x = 710, y = 1168, width = 148, height = 151, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 103: F press0002
		{x = 710, y = 1168, width = 148, height = 151, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 104: F press0003
		{x = 368, y = 771, width = 50, height = 64, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 128: F tail0000
		{x = 882, y = 992, width = 154, height = 157, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 95: F0000
		{x = 1943, y = 1300, width = 50, height = 44, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 100: F hold0000
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
