class Solution{
  ListNode? reverseList(ListNode? head) {
  ListNode? pointer = head;

  while (pointer?.next != null) {
    pointer = pointer?.next;
  }

  ListNode? newHead = pointer;

  while (pointer != head) {
    ListNode? pointer2 = head;

    while (pointer2?.next != pointer) {
      pointer2 = pointer2?.next;
    }

    pointer?.next = pointer2;
    pointer2?.next = null;

    pointer = pointer2;
  }

  return newHead;
}
}
