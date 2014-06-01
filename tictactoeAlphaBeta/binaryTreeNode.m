classdef binaryTreeNode < handle
   properties
      Next = [binaryTreeNode.empty binaryTreeNode.empty binaryTreeNode.empty binaryTreeNode.empty binaryTreeNode.empty binaryTreeNode.empty binaryTreeNode.empty binaryTreeNode.empty binaryTreeNode.empty];
      Prev = binaryTreeNode.empty;
      min = 10;
      max = -10;
      board;
   end
   
   methods
      function node = binaryTreeNode(board)
          if nargin > 0
            node.board = board;
          end
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