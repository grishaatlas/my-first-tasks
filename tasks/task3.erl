-module(task3).
-export([main/0]).


%Task3: What is the largest prime factor of the number 600851475143 ?
%-----------------------------------------------------------------------------
task3(Number)              -> task3(Number,2).
task3(Number,Current) when Current < Number,
                           Number rem Current > 0 
                           -> task3(Number,Current + 1);
task3(Number,Current)      -> Number div Current.

%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
main() ->
    io:format("task3: ~n"), 
    task3(600851475143).

%answer = 8462696833
