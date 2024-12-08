# Ada Constraint_Error Example

This repository demonstrates a common error in Ada programming: accessing an array element using an index outside the array's bounds.  This leads to a `Constraint_Error` exception.

The `bug.ada` file contains code that attempts to access an array element at index 0, while the array's index range is 1..10. The `bugSolution.ada` shows the corrected code, adding bounds checking to avoid the error.

## How to Reproduce

1. Compile `bug.ada` using an Ada compiler (like GNAT).
2. Run the executable.  It will terminate with a `Constraint_Error`.

## Solution

The solution involves robust error handling to catch the exception, or better yet, preventing the exception entirely by checking the index bounds before attempting to access the array element.