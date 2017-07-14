!using System;
!using System.Linq;

!public class Program
!{
!	public static void Main()
!	{
!		var grid = new []
!		{
!			new [] { 3 },
!			new [] { 7, 4 },
!			new [] { 2, 4, 6 },
!			new [] { 8, 5, 9, 3 },
!		};
		
!		for (var j = 2; j >= 0; --j)
!		{
!			for (var i = 0; i <= j; ++i)
!			{
!				grid[j][i] += Math.Max(grid[j + 1][i], grid[j + 1][i + 1]);
!			}
!		}
		
!		Console.WriteLine(string.Join("\r\n", grid.Select(x => string.Join(",", x))));
!		Console.WriteLine();
!		Console.WriteLine(grid[0][0]);
!	}
!}