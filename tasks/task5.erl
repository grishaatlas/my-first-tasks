-module(task5).
-export([main/0]).


%Task5: What is the smallest positive number that is evenly divisible by all
%       of the numbers from 1 to 20?
%-----------------------------------------------------------------------------
task5(Number)                     -> task5(Number,Number,Number).
task5(Number,Digits,Current) when Current rem Digits > 0
                                  -> task5(Number,Number,Current+1);
task5(Number,Digits,Current) when Digits > 0,
                                  Current rem Digits == 0
                                  -> task5(Number,Digits-1,Current);
task5(_,Digits,Current)      when Digits == 0
                                  -> Current.

%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
main() ->
    io:format("task5: ~n"),
    task5(20).

%answer = 232792560
