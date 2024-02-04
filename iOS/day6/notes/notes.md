## errors

```bash

# error 1: key value coding-compliant
# - this class is not key value coding-compliant for the key editName
# reason:
# - the property connected with a GUI element does not exist anymore (due to the fact that the property has got deleted or renamed, but connection in the storyboard still exists)
# - in the above error, the property editName does not exist
# solution:
# - remove the connection created earlier for the older property

# error 2: unrecognized selector sent to instance
# - '-[application1.ViewController onSave:]: unrecognized selector sent to instance 0x131d05eb0'
# reason:
# - application is trying to call the method which does NOT exist in the class object
# - in the above error, the method onSave does not exist in the class ViewController
# solution:
# - open Interface Builder's connections inspector and delete the connection created earlier with the method
```
