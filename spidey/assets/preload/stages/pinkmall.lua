function onCreate()
	-- background shit
	makeLuaSprite('pnkbg', 'pnkbg', -700, -300);
	setLuaSpriteScrollFactor('pnkbg', 0.9, 0.9);
	

	addLuaSprite('pnkbg', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end