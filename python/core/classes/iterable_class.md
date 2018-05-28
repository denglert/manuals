# Creating an iterable classes in `python`

**References:**
- https://stackoverflow.com/questions/19151/build-a-basic-python-iterator
- https://stackoverflow.com/questions/48257280/how-to-implement-a-custom-iterator-from-scratch-in-python-that-only-iterates-ove
- https://stackoverflow.com/questions/40923522/python-defining-an-iterator-class-failed-with-iter-returned-non-iterator-of?rq=1j

**Example:**

~~~~
class RooArgSet:

    def __init__(self, obj):
        self.argset = obj 
        self.iter = self.argset.createIterator()

    def __iter__(self):
        return self

    def __next__(self):
        item = self.iter.Next()
        if item:
            return item
        else:
            self.iter.Reset()
            raise StopIteration
    
    def next(self):
        return self.__next__()
~~~~
