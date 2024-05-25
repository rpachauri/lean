/-
Functional Programming in Lean

Interlude: Propositions, Proofs, and Indexing
-/

/- Exercise 1 -/
theorem twoPlusThreeIsFive : 2 + 3 = 5 := rfl
theorem fifteenMinusEightIsSeven : 15 - 8 = 7 := rfl
theorem helloWorld : "Hello, ".append "world!" = "Hello, world!" := rfl

/-
Type Mismatch Error because `5 < 18` does not satisfy the reflexive property.
-/
-- theorem fiveLessThanEighteen : 5 < 18 := rfl

/- Exercise 2 -/
theorem twoPlusThreeIsFive' : 2 + 3 = 5 := by
  simp

theorem fifteenMinusEightIsSeven' : 15 - 8 = 7 := by
  simp

theorem helloWorld' : "Hello, " ++ "world!" = "Hello, world!" := by
  simp

theorem fiveLessThanEighteen' : 5 < 18 := by
  simp

/- Exercise 3 -/
def woodlandCritters : List String := ["Raccoon", "Squirrel", "Fox", "Deer", "Owl", "Rabbit", "Bear", "Beaver", "Skunk", "Chipmunk"]

def fifthEntry (xs : List α) : Option α := xs[4]?

-- Evaluates to: `some "Owl"`
#eval fifthEntry woodlandCritters
-- Evaluates to: `none`
#eval fifthEntry [1, 2, 3,]
