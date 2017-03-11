def count_vowels(s):
    ''' (str) -> int

    Return the number of vowels in s.
    Note: Do not treat the letter y as vowel.
    qty_vowels is an integer accumulator

    >>> count_vowels('This is a test')
    4
    >>> count_vowels('xyz')
    0
    '''

    qty_vowels = 0

    for char in s:
        if char in 'aeiouAEIOU' :
            qty_vowels += 1

    return qty_vowels

def collect_vowels(s):
    """ (str) -> str

    Return the vowels from s.
    Note: Do not treat the letter y as vowel.
    vowels is a string accumulator 

    >>> collect_vowels('Happy Aniversary!')
    'aAiea'
    >>> count_vowels('xyz')
    ''
    """

    vowels = ''

    for char in s:
        if char in 'aeiouAEIOU' :
            vowels += char

    return vowels


def cls():
    ''' (void) -> void

    Return 50 newlines to clear screen
    '''
    print('\n'*50)




            
    

