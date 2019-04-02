# There is a robot starting at position (0, 0), the origin, on a 2D plane. Given
# a sequence of its moves, judge if this robot ends up at (0, 0) after it completes its moves.
#
# The move sequence is represented by a string, and the character moves[i]
# represents its ith move. Valid moves are R (right), L (left), U (up), and D
# (down). If the robot returns to the origin after it finishes all of its moves,
# return true. Otherwise, return false.
#
# Note: The way that the robot is "facing" is irrelevant. "R" will always make
# the robot move to the right once, "L" will always make it move left, etc. Also,
# assume that the magnitude of the robot's movement is the same for each move.



def judge_circle(moves)
    vertical = 0
    horizontal = 0
    movement_points = { "U" => 1, "D" => -1, "L" => -1, "R" => 1 }

    moves.length.times do |i|
        vertical += movement_points[moves[i]] if moves[i] == 'U' || moves[i] == 'D'
        horizontal += movement_points[moves[i]] if moves[i] == 'L' || moves[i] == 'R'
    end

    return true if vertical == 0 && horizontal == 0
    return false
end

judge_circle("UUD")
judge_circle("LL")
judge_circle("UD")
