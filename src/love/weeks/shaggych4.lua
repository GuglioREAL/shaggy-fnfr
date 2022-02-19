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

		theSky = graphics.newImage(love.graphics.newImage(graphics.imagePath("shaggy/outside/sky")))
        ground = graphics.newImage(love.graphics.newImage(graphics.imagePath("shaggy/outside/ground")))
        middleMount = graphics.newImage(love.graphics.newImage(graphics.imagePath("shaggy/outside/middlemount")))
        backMount = graphics.newImage(love.graphics.newImage(graphics.imagePath("shaggy/outside/backMount")))
        clouds = graphics.newImage(love.graphics.newImage(graphics.imagePath("shaggy/outside/clouds")))
        backMount.y = -300
        middleMount.y = -350
        ground.y = 25
		enemy = love.filesystem.load("sprites/characters/redShaggy.lua")()

		girlfriend.x, girlfriend.y = -200, -590
		enemy.x, enemy.y = -725, -550
		boyfriend.x, boyfriend.y = 30, -390

		enemyIcon:animate("red shaggy", false)

		self:load()
	end,

	load = function(self)
        if song == 1 or (song == 2 and difficulty == "-easy") or (song == 3 and difficulty == "-easy") then
		    weeks:load()
        else
            weeks7k:load()
        end
		if song == 3 then
			inst = love.audio.newSource("music/shaggy/dissasembler/Inst.ogg", "stream")
			voices = love.audio.newSource("music/shaggy/dissasembler/Voices.ogg", "stream")

			images = {
				icons = love.graphics.newImage(graphics.imagePath("icons")),
				notes = love.graphics.newImage(graphics.imagePath("arrows/notes")),
				numbers = love.graphics.newImage(graphics.imagePath("numbers"))
			}
		elseif song == 2 then
			inst = love.audio.newSource("music/shaggy/thunderstorm/Inst.ogg", "stream")
			voices = love.audio.newSource("music/shaggy/thunderstorm/Voices.ogg", "stream")

            images = {
				icons = love.graphics.newImage(graphics.imagePath("icons")),
				notes = love.graphics.newImage(graphics.imagePath("arrows/notes")),
				numbers = love.graphics.newImage(graphics.imagePath("numbers"))
			}
		else
			inst = love.audio.newSource("music/shaggy/soothing-power/Inst.ogg", "stream")
			voices = love.audio.newSource("music/shaggy/soothing-power/Voices.ogg", "stream")
		end

		self:initUI()
		weeks:setupCountdown()
	end,

	initUI = function(self)
        if song == 1 or (song == 2 and difficulty == "-easy") or (song == 3 and difficulty == "-easy") then
		    weeks:initUI()
        else
            weeks7k:initUI()
        end

		if song == 3 then
            if difficulty == "-easy" then
			    weeks:generateNotes(love.filesystem.load("charts/shaggy/dissasembler-easy.lua")())
            else
			    weeks7k:generateNotes(love.filesystem.load("charts/shaggy/dissasembler" .. difficulty .. ".lua")())
            end
		elseif song == 2 then
            if difficulty == "-easy" then
                weeks:generateNotes(love.filesystem.load("charts/shaggy/thunderstorm-easy.lua")())
            else
			    weeks7k:generateNotes(love.filesystem.load("charts/shaggy/thunderstorm" .. difficulty .. ".lua")())
            end
		else
			weeks:generateNotes(love.filesystem.load("charts/shaggy/soothing-power" .. difficulty .. ".lua")())
		end
	end,

	update = function(self, dt)
        if song == 1 or (song == 2 and difficulty == "-easy") or (song == 3 and difficulty == "-easy") then
		    weeks:update(dt)
        else
            weeks7k:update(dt)
        end

		if health >= 80 then
			if enemyIcon:getAnimName() == "red haggy" then
				enemyIcon:animate("red shaggy losing", false)
			end
		else
			if enemyIcon:getAnimName() == "red shaggy losing" then
				enemyIcon:animate("red shaggy", false)
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
        if song == 1 or (song == 2 and difficulty == "-easy") or (song == 3 and difficulty == "-easy") then
		    weeks:updateUI(dt)
        else
            weeks7k:updateUI(dt)
        end
	end,

	draw = function(self)
        if song ~= 4 then
            love.graphics.push()
                love.graphics.translate(graphics.getWidth() / 2, graphics.getHeight() / 2)
                love.graphics.scale(cam.sizeX, cam.sizeY)

                love.graphics.push()
                    love.graphics.translate(cam.x * 0.9, cam.y * 0.9)

                    theSky:draw()
                    clouds:draw()
                    backMount:draw()
                    middleMount:draw()
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
            if song == 1 or (song == 2 and difficulty == "-easy") or (song == 3 and difficulty == "-easy") then
                weeks:drawUI()
            else
                weeks7k:drawUI()
            end
        else
            love.graphics.draw(video, 0, 0)
        end
	end,

	leave = function(self)
		theSky = nil
        clouds = nil
        backMount = nil
        middleMount = nil
        ground = nil

		weeks:leave()
	end
}
