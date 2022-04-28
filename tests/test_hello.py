from src.hello import say_hello_to

def test_hello():
    i = 0
    assert 'hello there' == say_hello_to('there')

