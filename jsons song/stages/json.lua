function onCreate()
	makeLuaSprite('bar', 'bg/bar', -400, 800);
    makeLuaSprite('bg', 'bg/grey', -100, -100);



    makeLuaSprite('coder', 'bg/techniktil', -200, 200);
    makeLuaSprite('sandile', 'bg/m0nkeyman', -100, 500);
    makeLuaSprite('a_human', 'bg/a_human', 1000, 500);
    makeLuaSprite('Normal Guy', 'bg/Normal Guy', 500, 300);
    makeLuaSprite('carter', 'bg/carterishappy', 1000, 300);


	setScrollFactor('coder', 0.9, 0.9);
	setScrollFactor('sandile', 0.9, 0.9);
	setScrollFactor('a_human', 0.9, 0.9);
	setScrollFactor('Normal Guy', 0.9, 0.9);
	setScrollFactor('carter', 0.9, 0.9);
	setScrollFactor('bg', 0, 0);
    
    
    scaleObject('bg', 2, 2);
    scaleObject('bar', 1.5, 1.5);
    scaleObject('coder', 1.5, 1.5);
    scaleObject('sandile', 1.5, 1.5);
    scaleObject('a_human', 1.5, 1.5);
    scaleObject('Normal Guy', 1.5, 1.5);
    scaleObject('carter', 1.5, 1.5);



    addLuaSprite('bg', false);
    addLuaSprite('coder', false);
    addLuaSprite('sandile', false);
    addLuaSprite('a_human', false);
    addLuaSprite('Normal Guy', false);
    addLuaSprite('carter', false);
    addLuaSprite('bar', false);





end
finishedGameover = false;
startedPlaying = false;
function onGameOver()
	runTimer('how?!', 2.7);
	return Function_Continue;
end

function onGameOverConfirm(reset)
	finishedGameover = true;
end


function onTimerCompleted(tag, loops, loopsLeft)
	-- A tween you called has been completed, value "tag" is it's tag
	if not finishedGameover and tag == 'how?!' then
		playSound('ded');
		startedPlaying = true;
	end
end