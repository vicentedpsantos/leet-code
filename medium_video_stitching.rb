# You are given a series of video clips from a sporting event that lasted T
# seconds.  These video clips can be overlapping with each other and have varied
# lengths.
#
# Each video clip clips[i] is an interval: it starts at time clips[i][0] and
# ends at time clips[i][1].  We can cut these clips into segments freely: for
# example, a clip [0, 7] can be cut into segments [0, 1] + [1, 3] + [3, 7].
#
# Return the minimum number of clips needed so that we can cut the clips into
# segments that cover the entire sporting event ([0, T]).  If the task is
# impossible, return -1.
#
#
#
# Example 1:
#
# Input: clips = [[0,2],[4,6],[8,10],[1,9],[1,5],[5,9]], T = 10
# Output: 3
# Explanation:
# We take the clips [0,2], [8,10], [1,9]; a total of 3 clips.
# Then, we can reconstruct the sporting event as follows:
# We cut [1,9] into segments [1,2] + [2,8] + [8,9].
# Now we have segments [0,2] + [2,8] + [8,10] which cover the sporting event [0, 10].

def video_stitching(clips, t)
  return -1 if clips.max.max < t
  return -1 if clips.min.min > 0
  return (t / clips.min.max) if clips.map{ |clip| clip[1] - clip[0] }.uniq.length == 1

  stitched = []
  (0..t).each {|t| stitched[t] = nil }

  (0..100).each do
    break unless stitched.include?(nil)
    chosen = try_candidates(stitched, clips)
    start = clips[chosen][0]
    finish = clips[chosen][1]

    for i in (start..finish) do
      stitched[i] = chosen
    end
  end

  stitched[0, t + 1].uniq.length
end

def try_candidates(list, clips)
  nil_start = list.find_index(nil)
  nil_end = nil_start - 1

  for i in nil_start..list.length
    break if list[i] != nil
    nil_end += 1
  end

  durations = clips.map{ |clip| clip[1] - clip[0] }
  selected = clips[0]

  clips.each do |clip|
    if nil_start.between?(clip[0], clip[1]) || nil_end.between?(clip[0], clip[1])
      if durations[clips.find_index(clip)] > durations[clips.find_index(selected)] || clip[0] == nil_start || clip[1] == nil_start
        selected = clip

        break if clip[0] <= nil_start && clip[1] >= nil_end
      end
    end
  end

  return clips.find_index(selected)
end


p video_stitching([[5,6],[0,7],[7,10],[2,3],[4,4],[1,2],[3,4],[5,5],[0,0],[4,4]], 2)
p video_stitching([[17,18],[25,26],[16,21],[3,3],[19,23],[1,5],[0,2],[9,20],[5,17],[8,10]], 15)
p video_stitching([[8,10],[17,39],[18,19],[8,16],[13,35],[33,39],[11,19],[18,35]], 20)
p video_stitching([[3,12],[7,14],[9,14],[12,15],[0,9],[4,14],[2,7],[1,11]], 10)
p video_stitching([[0,2],[4,6],[8,11],[1,9],[1,5],[5,9]], 10)
p video_stitching([[0,1],[6,8],[0,2],[5,6],[0,4],[0,3],[6,7],[1,3],[4,7],[1,4],[2,5],[2,6],[3,4],[4,5],[5,7],[6,9]], 9)
p video_stitching([[0,4],[2,8]], 5)
p video_stitching([[0,1],[1,2]], 5)
p video_stitching([[5,7],[1,8],[0,0],[2,3],[4,5],[0,6],[5,10],[7,10]], 5)
p video_stitching([[0,2],[4,6],[8,10],[1,9],[1,5],[5,9]], 10)
p video_stitching([[0,5],[1,6],[2,7],[3,8],[4,9],[5,10],[6,11],[7,12],[8,13],[9,14],[10,15],[11,16],[12,17],[13,18],[14,19],[15,20],[16,21],[17,22],[18,23],[19,24],[20,25],[21,26],[22,27],[23,28],[24,29],[25,30],[26,31],[27,32],[28,33],[29,34],[30,35],[31,36],[32,37],[33,38],[34,39],[35,40],[36,41],[37,42],[38,43],[39,44],[40,45],[41,46],[42,47],[43,48],[44,49],[45,50],[46,51],[47,52],[48,53],[49,54]], 50)
p video_stitching([[0,1],[1,2]], 5)
p video_stitching([[24,28],[10,56],[50,78],[38,77],[38,78],[3,69],[33,49],[66,89],[73,83],[6,12],[24,86],[67,82],[18,26],[1,57],[13,30],[8,56],[58,78],[2,84],[35,39],[45,51],[30,32],[19,31],[32,70],[1,15],[16,18],[32,87],[32,87],[39,42],[81,84],[25,61],[26,34],[10,82],[17,34],[56,72],[17,22],[8,83],[5,21],[3,79],[12,73],[0,28],[74,76],[41,79],[4,60],[51,90],[10,41],[47,90],[44,56],[13,16],[43,83],[0,22],[30,40],[8,27],[57,58],[0,26],[16,66],[62,89],[2,74],[17,61],[25,28],[23,54],[42,79],[14,28],[26,77],[34,36],[17,42],[72,81],[12,87],[3,57],[81,88],[65,87],[35,74],[19,77],[10,53],[38,75],[14,90],[10,90],[57,62],[37,74],[24,80],[52,63],[52,55],[64,73],[45,79],[12,19],[26,38],[40,81],[28,48],[33,62],[18,50],[9,40]], 72)
