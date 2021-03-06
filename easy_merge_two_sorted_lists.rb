# Merge two sorted linked lists and return it as a new list. The new list should
# be made by splicing together the nodes of the first two lists.
#
# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def merge_two_lists(l1, l2)
  arr_l1 = retrieve_values_from_nodes(l1)
  arr_l2 = retrieve_values_from_nodes(l2)

  arr_l1.concat(arr_l2)
  arr_l1.sort!
end

def retrieve_values_from_nodes(linked_list)
  arr = []
  node = linked_list
  until node.nil?
    arr << node.val
    node = node.next
  end
  arr
end
