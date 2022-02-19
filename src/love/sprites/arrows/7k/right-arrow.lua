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
		{x = 708, y = 991, width = 154, height = 157, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 50: D0000
		{x = 928, y = 767, width = 50, height = 64, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 83: D tail0000
		{x = 1943, y = 1172, width = 50, height = 44, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 55: D hold0000
		{x = 522, y = 521, width = 223, height = 226, offsetX = -1, offsetY = -3, offsetWidth = 226, offsetHeight = 230}, -- 51: D confirm0000
		{x = 765, y = 521, width = 223, height = 226, offsetX = -1, offsetY = -3, offsetWidth = 226, offsetHeight = 230}, -- 52: D confirm0001
		{x = 1311, y = 517, width = 226, height = 230, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 53: D confirm0002
		{x = 1311, y = 517, width = 226, height = 230, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 54: D confirm0003
		{x = 1377, y = 1337, width = 138, height = 141, offsetX = -3, offsetY = -7, offsetWidth = 148, offsetHeight = 151}, -- 56: D press0000
		{x = 1377, y = 1337, width = 138, height = 141, offsetX = -3, offsetY = -7, offsetWidth = 148, offsetHeight = 151}, -- 57: D press0001
		{x = 537, y = 995, width = 148, height = 151, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 58: D press0002
		{x = 537, y = 995, width = 148, height = 151, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 59: D press0003
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
