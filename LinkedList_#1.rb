reverse_list(node3)
def reverse_list(list, previous=nil)
  # set current_head to node2
  current_head = list.next_node
  # Change node3.next_node node2-->nil
  list.next_node = previous
  if current_head
    # reverse_list(node2, node3)
    reverse_list(current_head, list)
  else
    list
  end
end



reverse_list(node2, node3)
def reverse_list(list, previous=nil)
  # set current_head to node1
  current_head = list.next_node
  # Change node2.next_node node1-->node3
  list.next_node = previous
  if current_head
    # reverse_list(node1, node2)
    reverse_list(current_head, list)
  else
    list
  end
end



reverse_list(node1, node2)
def reverse_list(list, previous=nil)
  # set current_head to nil
  current_head = list.next_node
  # Change node1.next_node nil-->node2
  list.next_node = previous
  if current_head
    reverse_list(current_head, list)
  else
    # The end, return node1
    list
  end
end