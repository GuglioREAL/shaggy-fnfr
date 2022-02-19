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
		if difficulty == "-easy" then
			weeks:enter()
		else
       		weeks9k:enter()
		end

		bg = graphics.newImage(love.graphics.newImage(graphics.imagePath("shaggy/god/bg")))
		debree = graphics.newImage(love.graphics.newImage(graphics.imagePath("shaggy/god/debree")))
		rock = graphics.newImage(love.graphics.newImage(graphics.imagePath("shaggy/god/rock")))
		enemy = love.filesystem.load("sprites/characters/pshaggy.lua")()

		debree.y = 50
		debree.sizeX, debree.sizeY = 1.9, 1.9
		debree.x, debree.y = -1000, 50
		rock.x, rock.y = -50, 520

		cam.sizeX, cam.sizeY = 0.6, 0.6
		camScale.x, camScale.y = 0.6, 0.6

		girlfriend.x, girlfriend.y = 50, 50
		enemy.x, enemy.y = -725, 120
		boyfriend.x, boyfriend.y = 30, 240

		enemyIcon:animate("god shaggy", false)

		self:load()
	end,

	load = function(self)
		if difficulty == "-easy" then
			weeks:load()
		else
       		weeks9k:load()
		end
    
		inst = love.audio.newSource("music/shaggy/god-eater/Inst.ogg", "stream")
		voices = love.audio.newSource("music/shaggy/god-eater/Voices.ogg", "stream")

		self:initUI()

		weeks:setupCountdown()
	end,

	initUI = function(self)
		if difficulty == "-easy" then
			weeks:initUI()
		else
       		weeks9k:initUI()
		end
		if difficulty == "-easy" then
			weeks:generateNotes(love.filesystem.load("charts/shaggy/god-eater-easy.lua")())
		else
			weeks9k:generateNotes(love.filesystem.load("charts/shaggy/god-eater" .. difficulty .. ".lua")())
		end
		
	end,

	update = function(self, dt)
		if difficulty == "-easy" then
			weeks:update(dt)
		else
       		weeks9k:update(dt)
		end        

		if health >= 80 then
			if enemyIcon:getAnimName() == "god shaggy" then
				enemyIcon:animate("god shaggy losing", false)
			end
		else
			if enemyIcon:getAnimName() == "god shaggy losing" then
				enemyIcon:animate("god shaggy", false)
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
		if difficulty == "-easy" then
			weeks:updateUI(dt)
		else
       		weeks9k:updateUI(dt)
		end        
	end,

	draw = function(self)
		love.graphics.push()
			love.graphics.translate(graphics.getWidth() / 2, graphics.getHeight() / 2)
			love.graphics.scale(cam.sizeX, cam.sizeY)

			love.graphics.push()
				love.graphics.translate(cam.x * 0.25, cam.y * 0.25)

				bg:draw()
			love.graphics.pop()
			love.graphics.push()
				love.graphics.translate(cam.x * 0.5, cam.y * 0.5)

			love.graphics.pop()
			love.graphics.push()
				love.graphics.translate(cam.x * 0.9, cam.y * 0.9)

                debree:draw()
				rock:draw()
				girlfriend:draw()
			love.graphics.pop()
			love.graphics.push()
				love.graphics.translate(cam.x, cam.y)

				enemy:draw()
				boyfriend:draw()
			love.graphics.pop()
			weeks9k:drawRating(0.9)
		love.graphics.pop()
		if difficulty == "-easy" then
			weeks:drawUI()
		else
       		weeks9k:drawUI()
		end
	end,

	leave = function(self)
		bg = nil
		debree = nil
		rock = nil

		weeks:leave()
	end
}
