function onCreate()
	precacheImage('girlbounce1') 
	precacheImage('girlbounce2') 
	precacheImage('pnkbg') 

	-- background shit
	makeLuaSprite('pnkbg', 'pnkbg', -500, -600);
	setScrollFactor('pnkbg', 1.0, 1.0);

	makeAnimatedLuaSprite('girlbounce1', 'girlbounce1', -400, 0);
	luaSpriteAddAnimationByPrefix('girlbounce1', 'girlbounce1', 'girlbounce1', 24, true);
	objectPlayAnimation('girlbounce1', 'girlbounce1', true);
	scaleObject('girlbounce1', 0.6, 0.6);

	makeAnimatedLuaSprite('girlbounce2', 'girlbounce2', 800, 0);
	luaSpriteAddAnimationByPrefix('girlbounce2', 'girlbounce2', 'girlbounce2', 24, true);
	objectPlayAnimation('girlbounce2', 'girlbounce2', true);
	scaleObject('girlbounce2', 0.65, 0.65);

	addLuaSprite('pnkbg', false);
	addLuaSprite('girlbounce1', false);
	addLuaSprite('girlbounce2', false);

	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end