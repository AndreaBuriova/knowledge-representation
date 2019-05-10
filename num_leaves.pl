% num_leaves(+Tree, -Number)
% it is true if Number unify with the number of leaves in Tree.
% a leave is a tree without sons.

num_leaves(nil, 0).

num_leaves(t(_, L, R),  Total):-
  L \= nil, R \= nil,
  num_leaves(L, RL),
  num_leaves(R, RR),
  Total is RL + RR.
  
num_leaves(t(_, nil, nil), 1).

num_leaves(t(_, nil, R), RR):-
  R \= nil, 
  num_leaves(R, RR). 
     
num_leaves(t(_, L, nil), RL):-
  L \= nil, 
  num_leaves(L, RL). 
  
tree2( t(9, nil, t(5, t(2, nil, nil), t(3,nil,nil))   ) ).
  
%     9 
%      \
%       5
%      / \
%     2   3
  
tree1(t(9, t(5, t(2, nil, nil) , t(6, nil, nil) ), t(12, t(10, nil, nil), t(14, nil, nil)) )).  
  
  
  
% num_leaves(t(5, nil, nil), N).
% N = 1
