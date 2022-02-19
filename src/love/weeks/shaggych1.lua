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

local song, difficulty

local hauntedHouse

return {
	enter = function(self, from, songNum, songAppend)
		weeks:enter()

		song = songNum
		difficulty = songAppend

		hauntedHouse = graphics.newImage(love.graphics.newImage(graphics.imagePath("shaggy/bg_lemon")))
        hauntedHouse.sizeX, hauntedHouse.sizeY = 1.2, 1.2
		enemy = love.filesystem.load("sprites/characters/shaggy.lua")()

		girlfriend.x, girlfriend.y = -200, 50
		enemy.x, enemy.y = -725, 120
		boyfriend.x, boyfriend.y = 30, 240

		enemyIcon:animate("skid and pump", false)

		self:load()
	end,

	load = function(self)
        if (song <= 2) or (song == 3 and difficulty == "-easy") then
		    weeks:load()
		else
            weeks6k:load()
        end

		if song == 3 then
			inst = love.audio.newSource("music/shaggy/kaio-ken/Inst.ogg", "stream")
			voices = love.audio.newSource("music/shaggy/kaio-ken/Voices.ogg", "stream")

			images = {
				icons = love.graphics.newImage(graphics.imagePath("icons")),
				notes = love.graphics.newImage(graphics.imagePath("arrows/notes")),
				numbers = love.graphics.newImage(graphics.imagePath("numbers"))
			}
		elseif song == 2 then
			inst = love.audio.newSource("music/shaggy/eruption/Inst.ogg", "stream")
			voices = love.audio.newSource("music/shaggy/eruption/Voices.ogg", "stream")
		else
			inst = love.audio.newSource("music/shaggy/where-are-you/Inst.ogg", "stream")
			voices = love.audio.newSource("music/shaggy/where-are-you/Voices.ogg", "stream")
		end

		self:initUI()

		weeks:setupCountdown()
	end,

	initUI = function(self)
        if (song <= 2) or (song == 3 and difficulty == "-easy") then
		    weeks:initUI()
        else
            weeks6k:initUI()
        end

		if song == 3 then
			if difficulty == "-easy" then
				weeks:generateNotes(love.filesystem.load("charts/shaggy/kaio-ken-easy.lua")())
			else
				weeks6k:generateNotes(love.filesystem.load("charts/shaggy/kaio-ken" .. difficulty .. ".lua")())
			end
		elseif song == 2 then
			weeks:generateNotes(love.filesystem.load("charts/shaggy/eruption" .. difficulty .. ".lua")())
		else
			weeks:generateNotes(love.filesystem.load("charts/shaggy/where-are-you-hard.lua")())
		end
	end,

	update = function(self, dt)
		if (song <= 2) or (song == 3 and difficulty == "-easy") then
		    weeks:update(dt)
        else
            weeks6k:update(dt)
        end

		if health >= 80 then
			if enemyIcon:getAnimName() == "skid and pump" then
				enemyIcon:animate("skid and pump losing", false)
			end
		else
			if enemyIcon:getAnimName() == "skid and pump losing" then
				enemyIcon:animate("skid and pump", false)
			end
		end

		if not (countingDown or graphics.isFading()) and not (inst:isPlaying() and voices:isPlaying()) then
			if storyMode and song < 3 then
				song = song + 1

				self:load()
			else
				status.setLoading(true)

				graphics.fadeOut(
					0.5,
					function()
						Gamestate.switch(menu)

						status.setLoading(false)
					end
				)
			end
		end
        if (song <= 2) or (song == 3 and difficulty == "-easy") then
		    weeks:updateUI(dt)
        else
            weeks6k:updateUI(dt)
        end
	end,

	draw = function(self)
		love.graphics.push()
			love.graphics.translate(graphics.getWidth() / 2, graphics.getHeight() / 2)
			love.graphics.scale(cam.sizeX, cam.sizeY)

			love.graphics.push()
				love.graphics.translate(cam.x * 0.9, cam.y * 0.9)

				hauntedHouse:draw()
				girlfriend:draw()
			love.graphics.pop()
			love.graphics.push()
				love.graphics.translate(cam.x, cam.y)

				enemy:draw()
				boyfriend:draw()
			love.graphics.pop()
			weeks:drawRating(0.9)
		love.graphics.pop()
        if (song <= 2) or (song == 3 and difficulty == "-easy") then
		    weeks:drawUI()
        else
            weeks6k:drawUI()
        end
	end,

	leave = function(self)
		hauntedHouse = nil

		weeks:leave()
	end
}
