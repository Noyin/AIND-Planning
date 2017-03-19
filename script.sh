#! /bin/bash


problems=$(seq 1 3)
search_type=$(seq 1 10)

for problem in $problems
 do
   echo "Solving Problem $problem"
   	for search in $search_type
    do
       if [ $search -ne 2 ] && [ $search -ne 4 ] && [ $search -ne 6 ] && [ $problem -ne 2 ]
        then
                python run_search.py -p ${problem} -s ${search}
       fi
    done
done 



#for problem in $problems
 #do

  # 	for search in $search_type
   # do
    #   if ([ $search == 2 ] || [ $search -ne 4 ] || [ $search -ne 4 ]) && [ $problem -ne 2 ]
     #   then
      #          echo "Solving Problem $problem"
       #         python run_search.py -p ${problem} -s ${search}
       #fi
    #done
#done