# Creating Types
In order to use Custom types for command arguments a type.py file just be included. this file must have all the type classes that are being used in the command. You can also reference a git repo along with the type name if the type is in an Seperate repository.

Types can be created just like creating a command. within a python file a class of the new type you are creating that is inheriting `Declared_Type` from the python library. Also needing to be included are `conforms(self, value, label)`. This field checks the argument conforms to the desired standard and returns a boolean and a value that it could possibly be or None for no suggestion. Such as "127.0.0.1" for a IPAddress Type would come back as true. Here is a full example of what this class would look like completely.

```python
ip_type.py
------------------------
import ccl.types from Multiplat as mtypes

class IPAddress_Type(mtypes.Declared_Type):
   def __init__(self):
      super (
         "IPAddress",
         "Description"
      )

   def conforms(self, value, label):
      strList = value.split(".")
      
      if len(strList) != 4:
         return (False, None) 
      
      for num in strList  
         if not num.isnumeric():
            return (False, None) 

      return (True, None)   
      
```
This IPAddress can be better but it validates wether it is a correct format.