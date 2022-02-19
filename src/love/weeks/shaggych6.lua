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
		song = songNum
		difficulty = songAppend

        weeks9k:enter()

		bg = graphics.newImage(love.graphics.newImage(graphics.imagePath("shaggy/hell/BGBG")))
        bgspikes = graphics.newImage(love.graphics.newImage(graphics.imagePath("shaggy/hell/BGSpikes")))
        spikes = graphics.newImage(love.graphics.newImage(graphics.imagePath("shaggy/hell/Spikes")))
        lavalimits = graphics.newImage(love.graphics.newImage(graphics.imagePath("shaggy/hell/LavaLimits")))
        ground = graphics.newImage(love.graphics.newImage(graphics.imagePath("shaggy/hell/Ground")))
		enemy = love.filesystem.load("sprites/characters/phantomShaggy.lua")()

		girlfriend.x, girlfriend.y = -200, 50
		enemy.x, enemy.y = -715, 35
		boyfriend.x, boyfriend.y = 30, 290
		ground.y = 475
		bg.y = -600

		cam.sizeX, cam.sizeY = 0.6, 0.6
		camScale.x, camScale.y = 0.6, 0.6

		enemyIcon:animate("phantom shaggy", false)

		self:load()
	end,

	load = function(self)
        weeks9k:load()

    
		inst = love.audio.newSource("music/shaggy/talladega/Inst.ogg", "stream")
		voices = love.audio.newSource("music/shaggy/talladega/Voices.ogg", "stream")

		self:initUI()

		weeks9k:setupCountdown()
	end,

	initUI = function(self)

        weeks9k:initUI()
		
		weeks9k:generateNotes(love.filesystem.load("charts/shaggy/talladega-hard.lua")())
	end,

	update = function(self, dt)

        weeks9k:update(dt)

		if health >= 80 then
			if enemyIcon:getAnimName() == "phantom shaggy" then
				enemyIcon:animate("phantom shaggy losing", false)
			end
		else
			if enemyIcon:getAnimName() == "phantom shaggy losing" then
				enemyIcon:animate("phantom shaggy", false)
			end
		end

		if not (countingDown or graphics.isFading()) and not (inst:isPlaying() and voices:isPlaying()) then

			status.setLoading(true)

			graphics.fadeOut(
				0.5,
				function()
					Gamestate.switch(menu)

					status.setLoading(false)
				end
			)
		end
        weeks9k:updateUI(dt)
        
	end,

	draw = function(self)
		love.graphics.push()
			love.graphics.translate(graphics.getWidth() / 2, graphics.getHeight() / 2)
			love.graphics.scale(cam.sizeX, cam.sizeY)

			love.graphics.push()
				love.graphics.translate(cam.x * 0.9, cam.y * 0.9)

				bg:draw()
				lavalimits:draw()
				bgspikes:draw()
				spikes:draw()
				ground:draw()

				girlfriend:draw()
			love.graphics.pop()
			love.graphics.push()
				love.graphics.translate(cam.x, cam.y)

				enemy:draw()
				boyfriend:draw()
			love.graphics.pop()
			weeks:drawRating(0.9)
		love.graphics.pop()

		weeks9k:drawUI()
	end,

	leave = function(self)
		bg = nil
		lavalimits = nil
		bgspikes = nil
		spikes = nil
		ground = nil
		
		weeks9k:leave()
	end
}
