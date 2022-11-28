function onCreate()
	setProperty('dadGroup.visible', false);	
	-- background shit
	makeLuaSprite('pnkbg', 'pnkbg', -500, -600);
	setScrollFactor('pnkbg', 1.0, 1.0);

	addLuaSprite('pnkbg', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end