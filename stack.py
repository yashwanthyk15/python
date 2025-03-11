class Stack:
   def __init__(self,max=100):
       self.stack=[]
       self.maximum=max
       
   def push(self,element):
       if len(self.stack)==self.maximum:
           print("Stack Overflow")
       else:
           self.stack.append(element)
           
   def pop(self):
       if len(self.stack)==0:
           print("Stack is Empty")
       else:
           return self.stack.pop()
           
   def display(self):
       if len(self.stack)==0:
           print("Stack is Empty")
       else:
           print(self.stack)

stack=Stack()
while True:
    print("1->Push, 2->Pop, 3->Display, 4->Exit")

    c=int(input('Enter your choice'))
    if c==1:
        a=input('Enter an element to be pushed')
        stack.push(a)
    elif c==2:
        print('Popped element', stack.pop())
    elif(c==3):
        stack.display()
    else:
        print('Terminated')
        break
    
