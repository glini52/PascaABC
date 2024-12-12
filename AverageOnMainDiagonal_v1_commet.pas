Program MainDiagonalAverage;

Var
  Matrix: Array[1..10, 1..10] Of Integer;
  N, i, Sum, Count: Integer;
  Average: Real;

Begin
  { Введення розміру масиву }
  Write('Enter the size of the matrix (N x N): ');
  Readln(N);

  { Введення елементів масиву }
  WriteLn('Enter the elements of the matrix:');
  For i := 1 To N Do
    For j := 1 To N Do
    Begin
      Write('Element [', i, ',', j, ']: ');
      Read(Matrix[i, j]);
    End;

  { Обчислення середнього арифметичного на головній діагоналі }
  Sum := 0;
  Count := 0;
  For i := 1 To N Do
  Begin
    Sum := Sum + Matrix[i, i];
    Count := Count + 1;
  End;

  { Обчислення середнього арифметичного }
  If Count > 0 Then
    Average := Sum / Count
  Else
    Average := 0;

  { Виведення результату }
  WriteLn('The average of the main diagonal is: ', Average:0:2);
End.
