# Haskell PatternMatchFail Exception: Handling Empty Lists

This repository demonstrates a common Haskell error: a `PatternMatchFail` exception caused by applying the `head` function to an empty list. The `bug.hs` file contains the erroneous code. The solution, found in `bugSolution.hs`, showcases how to safely handle this situation.

## Problem

The `head` function in Haskell is designed to retrieve the first element of a list.  Attempting to call it on an empty list results in a runtime exception. This can be difficult to detect during development, especially in larger applications.

## Solution

The solution file demonstrates two ways to mitigate this error:

1. **Explicitly checking for emptiness:** The solution checks whether the list is empty using the `null` function. This prevents the `head` function from being applied to an empty list.
2. **Using the `maybe` function:** The solution uses the `maybe` function which allows you to provide a default value if the list is empty.