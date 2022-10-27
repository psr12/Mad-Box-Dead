// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_ease(inputvalue,outputmin,outputmax,inputmax){
/// EaseOutElastic(inputvalue,outputmin,outputmax,inputmax)
var _s = 1.70158;
var _p = 0;
var _a = outputmax;

if (inputvalue == 0 || _a == 0)
{
    return outputmin;
}

inputvalue /= inputmax;

if (inputvalue == 1)
{
    return outputmin + outputmax;
}

if (_p == 0)
{
    _p = inputmax * 0.3;
}

if (_a < abs(outputmax)) 
{ 
    _a = outputmax;
    _s = _p * 0.25; 
}
else 
{
    _s = _p / (2 * pi) * arcsin (outputmax / _a);
}

return _a * power(2, -10 * inputvalue) * sin((inputvalue * inputmax - _s) * (2 * pi) / _p ) + outputmax + outputmin;

}