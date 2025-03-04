class Node:
    def __init__(self, data):
        self.data = data
        self.next = None

class SinglyLinkedList:
    def __init__(self):
        self.head = None

    def append(self, data):
        new_node = Node(data)
        if not self.head:
            self.head = new_node
            return
        last = self.head
        while last.next:
            last = last.next
        last.next = new_node

    def display(self):
        if not self.head:
            print("List is empty")
            return
        current = self.head
        print("List:", end=" ")
        while current:
            print(current.data, end=" -> ")
            current = current.next
        print("None")

    def insert_at_start(self, data):
        new_node = Node(data)
        new_node.next = self.head
        self.head = new_node

    def delete_node(self, key):
        if not self.head:
            print("List is empty")
            return
        if self.head.data == key:
            self.head = self.head.next
            print(f"Deleted node with data: {key}")
            return
        current = self.head
        while current.next:
            if current.next.data == key:
                current.next = current.next.next
                print(f"Deleted node with data: {key}")
                return
            current = current.next
        print(f"Node with data {key} not found")

    def search(self, key):
        current = self.head
        while current:
            if current.data == key:
                return True
            current = current.next
        return False

sll = SinglyLinkedList()

while True:
    print("\n1. Append 2. Insert at Start 3. Delete Node 4. Display 5. Search 6. Exit")
    choice = int(input("Enter your choice: "))

    if choice == 1:
        data = int(input("Enter the data to append: "))
        sll.append(data)
    elif choice == 2:
        data = int(input("Enter the data to insert at start: "))
        sll.insert_at_start(data)
    elif choice == 3:
        data = int(input("Enter the data to delete: "))
        sll.delete_node(data)
    elif choice == 4:
        sll.display()
    elif choice == 5:
        data = int(input("Enter the data to search: "))
        found = sll.search(data)
        if found:
            print(f"Node with data {data} found.")
        else:
            print(f"Node with data {data} not found.")
    elif choice == 6:
        print("Exiting...")
        break
    else:
        print("Invalid choice. Please try again.")
