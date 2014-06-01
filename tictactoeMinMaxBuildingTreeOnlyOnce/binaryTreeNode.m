classdef binaryTreeNode < handle
   properties
      Next = [binaryTreeNode.empty binaryTreeNode.empty binaryTreeNode.empty binaryTreeNode.empty binaryTreeNode.empty binaryTreeNode.empty binaryTreeNode.empty binaryTreeNode.empty binaryTreeNode.empty];
      Prev = binaryTreeNode.empty;
      min1 = 0;
      min2 = 0;
      max1 = 0;
      max2 = 0;
      board = [0 0 0 0 0 0 0 0 0];
   end
   
   methods
      function node = binaryTreeNode()
         
      end
          
      function [newNode] = insert(parentNode, position, turn)
          newNode = binaryTreeNode();
          newNode.Prev = parentNode;
          newNode.board = parentNode.board;
          newNode.board(position) = turn;
          parentNode.Next(position) = newNode;
      end
   end % methods
end % classdef