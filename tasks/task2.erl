-module(task2).
-export([main/0]).


%Task2: By considering the terms in the Fibonacci sequence whose values do not
%       exceed four million, find the sum of the even-valued terms.
%-----------------------------------------------------------------------------
task2(MaxNumber)                                   -> task2(1,1,MaxNumber,0).
task2(PrePreNumber,PreNumber,MaxNumber,Summa) when PrePreNumber+PreNumber < MaxNumber,
                                                   (PrePreNumber+PreNumber) rem 2 == 0
                                                   -> task2(PreNumber,PrePreNumber+PreNumber,MaxNumber,Summa+PrePreNumber+PreNumber);
task2(PrePreNumber,PreNumber,MaxNumber,Summa) when PrePreNumber+PreNumber < MaxNumber
                                                   -> task2(PreNumber,PrePreNumber+PreNumber,MaxNumber,Summa);
task2(_,_,_,Summa)                                 -> Summa.

%+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
main() ->
    io:format("task2: ~n"),
    task2(4000000).

%answer = 4613732
