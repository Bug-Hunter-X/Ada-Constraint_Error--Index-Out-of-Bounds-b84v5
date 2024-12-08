```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   My_Arr : My_Array := (others => 0); -- Initialize the array

   function Get_Value(Index : Integer) return Integer is
   begin
      if Index in My_Arr'Range then
         return My_Arr(Index);
      else
         raise Constraint_Error; -- Raise exception for index out of bounds
      end if;
   end Get_Value;

begin
   -- Accessing element at index 0 will cause Constraint_Error
   Put_Line(Integer'Image(Get_Value(0)));

exception
   when Constraint_Error =>
      Put_Line("Index out of bounds");
end Example;
```