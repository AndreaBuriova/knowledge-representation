  
  
%           9                                5
%		 /    \                       t(5,nil,nil)
%		 
%		5      12 



% - t(Label, Left_tree, Right_tree)

% - nil 


% t(9, t(5, nil, nil),  t(12, nil, nil) )


tree1(t(9, t(5, t(2, nil, nil) , t(6, nil, nil) ), t(12, t(10, nil, nil), t(14, nil, nil)) )).


% Induction

% 1) p(n0)
% 2) p(n-1) -> p(n)


% num_nodes(+Tree, -Number)
% it is true if Number unify with the number of nodes of Tree.

num_nodes(nil, 0).

num_nodes(t(_, LeftT, RightT),  Total):-
  num_nodes(LeftT, RL),
  num_nodes(RightT, RR),
  Total is RL + RR + 1.
    
 




   		