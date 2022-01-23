function onCreate()
	makeAnimatedLuaSprite('c', 'd/c', 0,0);
	addAnimationByPrefix('c', 'sus', 'fall',24,true)
	objectPlayAnimation('c', 'sus',false)
	scaleObject('c', 0.7,0.7)
	addLuaSprite('c', true);
	setObjectCamera('c', 'camother', true);
	setProperty('c.visible',false);
	-- background shit

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end