def mystery(s):
    i = 0
    result = ''

    while not s[i].isdigit():
          result = result + s[i]
          i = i + 1

    return result


def example(L):
    """ (list) -> list
    """
    i = 0
    result = []
    while i < len(L):
        result.append(L[i])
        i = i + 3
    return result
l1 = [1, 2, 3, 4, 5, 6, 7, 8]

print("Q3: ", l1, "\n", example(l1)  )

def compress_list(L):
    """ (list of str) -> list of str

    Return a new list with adjacent pairs of string elements from L
    concatenated together, starting with indices 0 and 1, 2 and 3,and so on.

    Precondition: len(L) >= 2 and len(L) % 2 == 0

    >>> compress_list(['a', 'b', 'c', 'd'])
    ['ab', 'cd']
    """ 
    compressed_list = []
    i = 0

    while i < len(L):
        compressed_list.append(L[i] + L[i + 1])
        i += 2

    return compressed_list

print("Q4: ", compress_list(['a', 'b', 'c', 'd']))


def summer():
    sum = 0
    i = 1523
    while i <= 10503:
        if i %2 == 1:
            sum = sum + i
        i += 1
    print(sum)

print("Q5-while: ")
summer()

def sumfor():
    sum = 0
    for num in range(1523, 10504):
        if num %2 == 1:
            sum = sum + num
        
    print(sum)
    
print("Q5-for: ")
sumfor()

def while_version(L):
    """ (list of number) -> number
    """
    i = 0
    total = 0

    while i < len(L) and L[i] % 2 != 0:
        total = total + L[i]
        i = i + 1
    return total

L2 = [1, 3, 7, 5, 6, 7, 8] 
print("Q6-while: ", while_version(L2))

def for_version(L):
    found_even = False
    total = 0

    for num in L:
        if num % 2 != 0 and not found_even:
            total = total + num
        else:
            found_even = True
 
    return total

print("Q6-for: ", for_version(L2))

letters = ['b', 'd', 'a']
#letters = sort(letters)
print("Q7: letters = sort(letters)", letters)
letters = ['b', 'd', 'a']
#sort(letters)
print("Q7: sort(letters)", letters)
letters = ['b', 'd', 'a']
letters = letters.sort()
print("Q7: letters = letters.sort()", letters)
letters = ['b', 'd', 'a']
letters.sort()
print("Q7: letters.sort()", letters)



numbers = [1, 4, 3]
numbers.reverse()
print(numbers)

veggies = ['carrot', 'broccoli', 'potato', 'asparagus']
veggies.insert(veggies.index('broccoli'), 'celery')
print("Q8 ", veggies)

def cap_song_repetition(playlist, song):
    '''(list of str, str) -> NoneType

    Make sure there are no more than 3 occurrences of song in playlist.
    '''
    while playlist.count(song) >= 3:
        playlist.remove(song)
#    while playlist.count(song) > 3:
#        playlist.pop(playlist.index(song))
#    while playlist.count(song) > 3:
#        playlist.remove(song)


songlist = ['Lola', 'Venus', 'Lola', 'Lola', 'Let It Be', 'Lola', 'ABC', 'Cecilia', 'Lola', 'Lola']
print(songlist)
cap_song_repetition(songlist, 'Lola')
print("Q9 ", songlist)
      

a = [1, 2, 3]
b = a
b[1] = 'XYZ'
a[1] = a[1][0]
print("Q10 ", a, b)



a = [1, 2, 3]
b = [1, 2, 3]
a = [1, 'A', 3]
b = [1, 'A', 3]
print("Q11 ", a, b)


def increment_items(L, increment):
    i = 0
    while i < len(L):
        L[i] = L[i] + increment
        i = i + 1

values = [1, 2, 3]
print(increment_items(values, 2))
print("Q12 ",values)

values = []
for num in range(1, 4):
    values.append(num * 3)
print("Q13 a", values)

values = []
for num in range(1, 3):
    values.append(num * 3)
print("Q13 b", values)

values = []
for num in range(3, 9, 3):
    values.append(num)
print("Q13 c", values)

values = []
for num in range(3, 10, 3):
    values.append(num)
print("Q13 d", values)


for num in range(3, 20, 8):
    print("Q14 a", num)

for num in range(3, 8, 20):
    print("Q14 b", num)

for num in range(3, 19, 8):
    print("Q14 c", num)

for num in range(3, 23, 8):
    print("Q14 d", num)
