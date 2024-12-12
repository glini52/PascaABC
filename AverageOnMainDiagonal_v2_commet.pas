Program MainDiagonalAverage;

Var
  Matrix: Array[1..10, 1..10] Of Integer;
  N, i, j, Sum, Count: Integer;
  Average: Real;

Begin
  { Встановлення генератора випадкових чисел }
  Randomize;

  { Введення розміру матриці }
  Write('Enter the size of the matrix (N x N): ');
  Readln(N);

  { Генерація елементів масиву у діапазоні [-100, 100] }
  WriteLn('Generated matrix:');
  For i := 1 To N Do
  Begin
    For j := 1 To N Do
    Begin
      Matrix[i, j] := Random(201) - 100; { Random(201) генерує числа від 0 до 200 }
      Write(Matrix[i, j]:5); { Виведення згенерованого елемента }
    End;
    WriteLn;
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
