def count_vowels(s)
    ''' (str) -> int

    Return the number of vowels in s.
    Note: Do not treat the letter y as vowel.

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

            
    

