local xx = 1400;
local yy = 700;
local xx2 = 2650;
local yy2 = 1500;
local ofs = 100;
local followchars = true;
local del = 0;
local del2 = 0;
local keepsScroll = false;

function onUpdate(elapsed)

  if curStep >= 0 then

    songPos = getSongPosition()

    local currentBeat = (songPos/1000)*(bpm/100)

    doTweenX(dadTweenX, 'dad', 1050-500*math.sin((currentBeat*0.25)*math.pi),0.001)

  end

if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end

   	if del > 0 then
		del = del - 1
	end
	if del2 > 0 then
		del2 = del2 - 1
	end
    if followchars == true then
        if mustHitSection == true then
            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
	    if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
            end
	else

            if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' then
                triggerEvent('Camera Follow Pos',xx2-ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' then
                triggerEvent('Camera Follow Pos',xx2+ofs,yy2)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singUP' then
                triggerEvent('Camera Follow Pos',xx2,yy2-ofs)
            end
            if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' then
                triggerEvent('Camera Follow Pos',xx2,yy2+ofs)
            end
	    if getProperty('boyfriend.animation.curAnim.name') == 'idle' then
                triggerEvent('Camera Follow Pos',xx2,yy2)
	   end
        end
    else
        triggerEvent('Camera Follow Pos','','')
    end
end


function onCreatePost()


	makeLuaSprite('cheater2', 'a/a', -1280,-300);
	addLuaSprite('cheater2', false);
	scaleObject('cheater2', 3, 3);
	addGlitchEffect('cheater2',2,2)
	makeLuaSprite('cheater', 'BanduWorld/Bandu', -2480,-1350);
	addLuaSprite('cheater', false);
	scaleObject('cheater', 3, 3);
	addGlitchEffect('cheater',2,2)

function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
		if value1 == '1' then
			setProperty('cheater2.visible',true);
                        setProperty('cheater.visible', false);
		end
	end
end

end