-module(task1).
-export([main/0]).


%Task1: Find the sum of all the multiples of 3 or 5 below 1000.
%-----------------------------------------------------------------------------
task1(Total) -> task1(Total,0).

task1(Total,Sum) when Total > 0, Total rem 3 == 0 -> task1(Total-1,Total+Sum);
task1(Total,Sum) when Total > 0, Total rem 5 == 0 -> task1(Total-1,Total+Sum);
task1(Total,Sum) when Total > 0                   -> task1(Total-1,Sum);
task1(0,Sum) 					  -> Sum.

%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
main() ->
    io:format("task1: ~n"), 
    task1(1000).

%answer = 234168
