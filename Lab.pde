class Lab
{
  int sizeX;
  int sizeY;
  Cell[][] lab;
  Lab(int sX, int sY)
  {
    sizeX = sX;
    sizeY=sY;
    lab = new Cell[sizeX+1][sizeY+1];

    for (int x = 0; x<sizeX; x++)
      for (int y =0; y<sizeY; y++)
      {
        lab[x][y] = new Cell(true, true, 0, x, y);
      }

    for (int x = 0; x<sizeX; x++)
    {
      lab[x][sizeY] = new Cell(true, false, 0, x, sizeY);
    }

    for (int y =0; y<sizeY; y++)
    {
      lab[sizeX][y] = new Cell(false, true, 0, sizeX, y);
    }
    
    lab[sizeX][sizeY] = new Cell(false, false, 0, sizeX, sizeY);
  }
  
  void createLab()
  {
    int xr =(int)random(sizeX);
    int yr = (int)random(sizeY);
    lab[xr][yr].statement = 1;
    
    if(xr!=0&&yr!=0&&xr!=sizeX&&yr!=sizeY)
    {
        lab[xr][yr+1].statement = 1;
        lab[xr+1][yr]. statement =1;
        lab[xr][yr-1].statement =1;
        lab[xr-1][yr].statement =1;
    }
    else if(xr!=0&&yr!=0&&xr!=sizeX&&yr==sizeY)
    {
      
    }
    
    
     for (int x = 0; x<sizeX; x++)
      for (int y =0; y<sizeY; y++)
      {
        }
  
  }

  void draw()
  {
    for (int x = 0; x<=sizeX; x++)
      for (int y =0; y<=sizeY; y++)
      {
        lab[x][y].draw();
      }
  }
}