-module(task4).
-export([main/0]).


%Task4: Find the largest palindrome made from the product of two 3-digit numbers.
%--------------------------------------------------------------------------------
get_list_digits(Number)                 -> get_list_digits(Number,[]).
get_list_digits(Number,ResultList) when Number rem 10 > 0
                                        -> get_list_digits(Number div 10 ,[Number rem 10|ResultList]);
get_list_digits(_,ResultList)           -> lists:reverse(ResultList).



get_number_from_list(ResultList)                -> get_number_from_list(ResultList,0).
get_number_from_list([Digit|ResultList],Number) -> get_number_from_list(ResultList,Number*10+Digit);
get_number_from_list([],Number)                 -> Number.



task4(Min,Max)                                  -> get_max_polindrom(Min*Min,Max*Max,Max*Max).
get_max_polindrom(MinMult,MaxMult,Current) when Current >= MinMult
                                                -> Reverse_Current = get_number_from_list(get_list_digits(Current)),
						   if Reverse_Current /= Current
                                                        -> get_max_polindrom(MinMult,MaxMult,Current-1);
                                                   true -> Current
                                                   end.


%++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
main() ->
    io:format("task4: ~n"), 
    task4(100,999).
%answer = 997799
