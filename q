class Queue:
   def __init__(self,max=100):
       self.queue=[]
       self.maximum=max
       
   def q(self,element):
       if len(self.queue)==self.maximum:
           print("Queue Overflow")
       else:
           self.queue.append(element)
           
   def dq(self):
       if len(self.queue)==0:
           print("Queue is Empty")
       else:
           del self.queue[0]
           
           
   def display(self):
       if len(self.queue)==0:
           print("Queue is Empty")
       else:
           print(self.queue)

queue=Queue()
while True:
    print("1. Enqueue 2. Dequeue 3. Display 4. Exit")
    c=int(input('Enter your choice'))
    if c==1:
        a=input('Enter an element to be pushed')
        queue.q(a)
    elif c==2:
        print('deleted element', queue.dq())
    elif(c==3):
        queue.display()
    else:
        print('Terminated')
        break

//class Queue:
    def __init__(self):
        self.queue=[]
        
    def enqueue(self,item):
        self.queue.append(item)
        
    def dequeue(self):
        if not self.is_empty():
            return self.queue.pop(0)
        else :
            return "queue is empty"
        
    def is_empty(self):
        return len(self.queue) == 0
    
    def size(self):
        return len(self.queue)
    
    def peek(self):
        if not self.is_empty():
            return self.queue[0]
        else:
            return "Queue is empty"

q = Queue()

q.enqueue(10)
q.enqueue(20)
q.enqueue(30)

print("Front element:", q.peek())  
print("Queue size:", q.size())    

print("Dequeued:", q.dequeue())
print("Queue size after dequeue:", q.size())

print("Dequeued:", q.dequeue())
print("Dequeued:", q.dequeue())
print("Queue size after all dequeues:", q.size())

print("Dequeued:", q.dequeue())
