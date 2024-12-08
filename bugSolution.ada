```ada
procedure Example is
   type My_Array is array (1..10) of Integer;
   My_Arr : My_Array := (others => 0); -- Initialize the array

   function Get_Value(Index : Integer) return Integer is
   begin
      if Index in My_Arr'Range then
         return My_Arr(Index);
      else
         return 0; -- Return a default value or handle the error appropriately
      end if;
   end Get_Value;

begin
   -- Accessing element at index 0 will now return 0
   Put_Line(Integer'Image(Get_Value(0)));
   Put_Line(Integer'Image(Get_Value(5)));
end Example;
```