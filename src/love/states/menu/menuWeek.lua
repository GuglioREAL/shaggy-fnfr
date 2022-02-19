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

local upFunc, downFunc, confirmFunc, backFunc, drawFunc, menuFunc, menuDesc, trackNames

local menuState

local menuNum = 1

local weekNum = 1
local songNum, songAppend
local songDifficulty = 3

local titleBG = graphics.newImage(love.graphics.newImage(graphics.imagePath("menu/storymenu/weekMenu")))


local tutorial, week1, week2, week3, week4, week5

local weekDesc = {
	"FIRST ENCOUNTER",
	"THE REMATCH",
	"ULTIMATE DESTRUCTION",
	"BONUS MATCH",
	"SPECIAL KOMBAT WITH THE THIRD OF HIS KIND",
	"BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB",
	"HATING SIMULATOR FT. MOAWLING"
}
local difficultyStrs = {
	"-easy",
	"",
	"-hard"
}

tutorial = graphics.newImage(love.graphics.newImage(graphics.imagePath("menu/storymenu/week0")))
week1 = graphics.newImage(love.graphics.newImage(graphics.imagePath("menu/storymenu/week1")))
week2 = graphics.newImage(love.graphics.newImage(graphics.imagePath("menu/storymenu/week2")))
week3 = graphics.newImage(love.graphics.newImage(graphics.imagePath("menu/storymenu/week3")))
week4 = graphics.newImage(love.graphics.newImage(graphics.imagePath("menu/storymenu/week4")))
week5 = graphics.newImage(love.graphics.newImage(graphics.imagePath("menu/storymenu/week5")))


spooky_menu = graphics.newImage(love.graphics.newImage(graphics.imagePath("menu/storymenu/menu_halloween")))
sky_menu = graphics.newImage(love.graphics.newImage(graphics.imagePath("menu/storymenu/menu_sky")))
lava_menu = graphics.newImage(love.graphics.newImage(graphics.imagePath("menu/storymenu/menu_lava")))
outside_menu = graphics.newImage(love.graphics.newImage(graphics.imagePath("menu/storymenu/menu_outside")))

spooky_menu.y = -150
sky_menu.y = -150
lava_menu.y = -150
outside_menu.y = -150

mania = graphics.newImage(love.graphics.newImage(graphics.imagePath("menu/storymenu/easy")))
normal = graphics.newImage(love.graphics.newImage(graphics.imagePath("menu/storymenu/normal")))
canon = graphics.newImage(love.graphics.newImage(graphics.imagePath("menu/storymenu/hard")))

mania.x, mania.y = 375 + 25, 220
normal.x, normal.y = 375 + 25, 220
canon.x, canon.y = 375 + 25, 220

local selectSound = love.audio.newSource("sounds/menu/select.ogg", "static")
local confirmSound = love.audio.newSource("sounds/menu/confirm.ogg", "static")

local function switchMenu(menu)

end


return {
	enter = function(self, previous)
		songNum = 0
		weekNum = 1
		trackNames = "\nTutorial"
		menuDesc = "LEARN TO FUNK"

		cam.sizeX, cam.sizeY = 0.9, 0.9
		camScale.x, camScale.y = 0.9, 0.9

		if useDiscordRPC then
			presence = {
				state = "Choosing A Week",
				details = "In the Week Select Menu",
				largeImageKey = "logo",
				startTimestamp = now,
			}
			nextPresenceUpdate = 0
		end

		switchMenu(1)

		graphics.setFade(0)
		graphics.fadeIn(0.5)

		function confirmFunc()
			menu:musicStop()
			songNum = 1

			status.setLoading(true)

			graphics.fadeOut(
				0.5,
				function()
					if useDiscordRPC then
						presence = {
							state = "Selected a week",
							details = "Playing a week",
							largeImageKey = "logo",
							startTimestamp = now,
						}
						nextPresenceUpdate = 0
					end
					if input:getActiveDevice() ~= "joy" then
						songAppend = difficultyStrs[songDifficulty]
					else
						songAppend = "-easy"
					end

					storyMode = true

					Gamestate.switch(weekData[weekNum], songNum, songAppend)

					status.setLoading(false)
				end
			)
		end
		
	end,

	update = function(self, dt)


		function menuFunc()
			if weekNum == 1 then
				trackNames = "\nWhere-Are-You\nEruption\nKaio-Ken"
			elseif weekNum == 2 then
				trackNames = "\nWhats-New\nBlast\nSuper-Saiyan"
			elseif weekNum == 3 then
				trackNames = "\nGod-Eater"
			elseif weekNum == 4 then
				trackNames = "\nSoothing-Power\nThunderstorm\nDissasembler"
			elseif weekNum == 5 then
				trackNames = "\nAstral-Calamity"
			elseif weekNum == 6 then
				trackNames = "\nTallageda"
			end
		end

		if input:getActiveDevice() == "joy" then
			if weekNum == 6 then
				weekNum = 5
				menuFunc()
			end
		end

		if not graphics.isFading() then
			if input:pressed("down") then
				audio.playSound(selectSound)
				if input:getActiveDevice() == "joy" then
					if weekNum ~= 5 then
						weekNum = weekNum + 1
					else
						weekNum = 1
					end
				else
					if weekNum ~= 6 then
						weekNum = weekNum + 1
					else
						weekNum = 1
					end
				end
				menuFunc()

			elseif input:pressed("up") then
				audio.playSound(selectSound)
				if input:getActiveDevice() == "joy" then
					if weekNum ~= 1 then
						weekNum = weekNum - 1
					else
						weekNum = 5
					end
				else
					if weekNum ~= 1 then
						weekNum = weekNum - 1
					else
						weekNum = 6
					end
				end
				menuFunc()

			elseif input:pressed("left") then
				audio.playSound(selectSound)
				if input:getActiveDevice() ~= "joy" then
					if songDifficulty ~= 1 then
						songDifficulty = songDifficulty - 1
					else
						songDifficulty = 3 
					end
				end

			elseif input:pressed("right") then
				audio.playSound(selectSound)
				if input:getActiveDevice() == "joy" then
					if songDifficulty ~= 3 then
						songDifficulty = songDifficulty + 1
					else
						songDifficulty = 1
					end
				end

			elseif input:pressed("confirm") then
				audio.playSound(confirmSound)

				confirmFunc()
			elseif input:pressed("back") then
				audio.playSound(selectSound)

				Gamestate.switch(menuSelect)
			end
		end
	end,

	draw = function(self)
		love.graphics.push()
			love.graphics.translate(graphics.getWidth() / 2, graphics.getHeight() / 2)

			titleBG:draw()

			love.graphics.push()
				love.graphics.scale(cam.sizeX, cam.sizeY)
				if input:getActiveDevice() ~= "joy" then
					if songDifficulty == 1 then
						mania:draw()
					elseif songDifficulty == 2 then
						normal:draw()
					elseif songDifficulty == 3 then
						canon:draw()
					end
				else
					mania:draw()
				end

				if weekNum == 1 then
					tutorial.x, tutorial.y = 0, 220
					week1.y = 320
					spooky_menu:draw()

					tutorial:draw()
					week1:draw()

				elseif weekNum == 2 then
					tutorial.y = 130
					week2.y = 320
					week1.x, week1.y = 0, 220
					spooky_menu:draw()

					tutorial:draw()
					week1:draw()
					week2:draw()

				elseif weekNum == 3 then
					week1.y = 130
					week3.y = 320
					week2.x, week2.y = 0, 220
					sky_menu:draw()

					week1:draw()
					week2:draw()
					week3:draw()

				elseif weekNum == 4 then
					week2.y = 130
					week4.y = 320
					week3.x, week3.y = 0, 220
					outside_menu:draw()

					week2:draw()
					week3:draw()
					week4:draw()

				elseif weekNum == 5 then
					week5.y = 320
					week3.y = 130
					week4.x, week4.y = 0, 220
					lava_menu:draw()

					week3:draw()
					week4:draw()
					if input:getActiveDevice() ~= "joy" then
						week5:draw()
					end

				elseif weekNum == 6 and input:getActiveDevice() ~= "joy" then
					week4.y = 130
					week5.x, week5.y = 0, 220
					week4:draw()
					week5:draw()
				end
				
				love.graphics.printf(weekDesc[weekNum], -585, -395, 853, "right", nil, 1.5, 1.5)
				graphics.setColor(255 / 255, 117 / 255, 172 / 255)
				love.graphics.printf("TRACKS" .. trackNames, -1050, 140, 853, "center", nil, 1.5, 1.5)
				graphics.setColor(1,1,1)

			love.graphics.pop()
		love.graphics.pop()
	end,

	leave = function(self)

		Timer.clear()
	end
}
