# Given a matrix A, return the transpose of A.
#
# The transpose of a matrix is the matrix flipped over it's main diagonal,
# switching the row and column indices of the matrix.

def transpose(a)
  a.transpose
end

transpose([[1,2,3],[4,5,6],[7,8,9]]) #=> [[1,4,7],[2,5,8],[3,6,9]]
transpose([[1,2,3],[4,5,6]]) #=> [[1,4],[2,5],[3,6]]
