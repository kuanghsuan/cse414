-- a. R(A,B,C,D,E) with functional dependencies D → B, CE → A.

--   First, we need to decompose on R(A, B, C, D, E)
--   X = D, X⁺ = BD, x != X⁺ and X⁺ != ALL Attributes
--   Y = B, Z = ABCDE - BD = ACE
--   R1 = BD, R2 = ACDE

--   Thus, we can then decompose on R(A, C, D, E)
--   X = CE, X⁺ = ACE, x != X⁺ and X⁺ != ALL Attributes
--   Y = A, Z = ACDE - ACE = D
--   R1 = ACE, R2 = DCE

--   Finally, we have R1(B, D), R2(A, C, E), and R2(D, C, E)

-- b. S(A,B,C,D,E) with functional dependencies A → E, BC → A, DE → B.

--   First, we need to decompose on S(A, B, C, D, E)
--   X = A, X⁺ = AE, x != X⁺ and X⁺ != ALL Attributes
--   Y = E, Z = ABCDE - AE = BCD
--   S1 = AE, S2 = ABCD

--   Thus, we can then decompose on S2(A, B, C, D)
--   X = BC, X⁺ = ABC, x != X⁺ and X⁺ != ALL Attributes
--   S1 = ABC, S2 = BCD

--   Finally, we have S1(A, E), S2(A, B, C), and S2(B, C, D)



-- For each of the above schemas, decompose it into BCNF. 
-- Show all of your work and explain, at each step, which dependency violations you are correcting. 
-- Make sure you describe each step in your decomposition steps. (10 points each)
-- A set of attributes X is called closed (with respect to a given set of functional dependencies) if 
-- X⁺ = X. Consider a relation with schema R(A,B,C,D) and an unknown set of functional dependencies. 
-- For each closed attribute set below, give a set of functional dependencies that is consistent with it.


-- c. All subsets of {A,B,C,D} are closed.
-- (ans) A -> A
--       B -> B
--       C- > C
--       D- > D

-- d. (5 points) The only closed subsets of {A,B,C,D} are {} and {A,B,C,D}.
-- (ans) A -> B
--       B -> C
--       C- > D
--       D- > A


-- e. (5 points) The only closed subsets of {A,B,C,D} are {}, {B,C}, and {A,B,C,D}.
-- (ans) A -> B
--       B -> A
--       C- > ABC
--       D- > BCD