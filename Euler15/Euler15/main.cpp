//
//  main.cpp
//  Euler15
//
//  Created by Ghislain Leblanc on 2014-10-01.
//  Copyright (c) 2014 Tangoe Inc. All rights reserved.
//

#include <iostream>

class Node
{
public:
  int x;
  int y;
  bool hasRightNeighbor();
  bool hasDownNeighbor();
};
unsigned long long ctr = 0;
Node *grid[20][20] = {};

bool Node::hasRightNeighbor()
{
  return x < 19;
}

bool Node::hasDownNeighbor()
{
  return y < 19;
}

void latticePaths(Node *node)
{
  ctr++;
  
  if (node->hasRightNeighbor() && node->hasDownNeighbor())
  {
    latticePaths(grid[node->x + 1][node->y]);
    latticePaths(grid[node->x][node->y + 1]);
  }
  else if (node->hasRightNeighbor() && ! node->hasDownNeighbor())
  {
    latticePaths(grid[node->x + 1][node->y]);
  }
  else if (! node->hasRightNeighbor() && node->hasDownNeighbor())
  {
    latticePaths(grid[node->x][node->y + 1]);
  }
}

int main(int argc, const char * argv[])
{
  for (int i = 0; i < 20; i++)
    for (int j = 0; j < 20; j++)
    {
      Node *node = new Node;
      node->x = j;
      node->y = i;
      grid[j][i] = node;
    }
  
  latticePaths(grid[0][0]);
  
  std::cout << "The answer is: " << ++ctr << std::endl;
  
  return 0;
}
