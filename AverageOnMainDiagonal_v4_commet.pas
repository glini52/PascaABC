Program DiagonalAverages;

Var
  Matrix: Array[1..10, 1..10] Of Integer;
  N, i, j, SumMain, SumSide, CountMain, CountSide: Integer;
  AverageMain, AverageSide: Real;

Begin
  { Встановлення генератора випадкових чисел }
  Randomize;

  { Введення розміру матриці }
  Write('Enter the size of the matrix (N x N): ');
  Readln(N);

  { Генерація елементів матриці у діапазоні [-100, 100] }
  WriteLn('Generated matrix:');
  For i := 1 To N Do
  Begin
    For j := 1 To N Do
    Begin
      Matrix[i, j] := Random(201) - 100; { Random(201) генерує числа від 0 до 200, зсунуті в діапазон [-100, 100] }
      Write(Matrix[i, j]:5); { Виведення елементів матриці }
    End;
    WriteLn;
  End;

  { Ініціалізація змінних для діагоналей }
  SumMain := 0;
  SumSide := 0;
  CountMain := 0;
  CountSide := 0;

  { Обчислення середнього для головної та побічної діагоналей }
  For i := 1 To N Do
  Begin
    { Головна діагональ: i = j }
    SumMain := SumMain + Matrix[i, i];
    CountMain := CountMain + 1;

    { Побічна діагональ: i + j = N + 1 }
    SumSide := SumSide + Matrix[i, N - i + 1];
    CountSide := CountSide + 1;
  End;

  { Обчислення середнього арифметичного для діагоналей }
  If CountMain > 0 Then
    AverageMain := SumMain / CountMain
  Else
    AverageMain := 0;

  If CountSide > 0 Then
    AverageSide := SumSide / CountSide
  Else
    AverageSide := 0;

  { Виведення результатів }
  WriteLn('The average value of the main diagonal is: ', AverageMain:0:2);
  WriteLn('The average value of the side diagonal is: ', AverageSide:0:2);
End.
