class Cell
{
  boolean top;
  boolean left;
  int statement;
  int x;
  int y;
  int size;

  Cell(boolean Top, boolean Left, int Statement, int X, int Y)
  {
    top = Top;
    left = Left;
    statement = Statement;
    size = 20;
    x=X*size;
    y=Y*size;
}
  
  void draw()
  {
    if (top)
    line(x, y, x+size, y);
    if (left)
    line(x, y, x, y+size);
  }
}