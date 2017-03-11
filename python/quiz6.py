def merge(L):
    merged = []
    for i in range(0, len(L), 3):
        merged.append(L[i] + L[i + 1] + L[i + 2])
    return merged

print("Q1:", merge([1, 2, 3, 4, 5, 6, 7, 8, 9]))
# [6, 15, 24]

def mystery(s):
    """ (str) -> bool
    """
    matches = 0
    for i in range(len(s) // 2):
        print("Q2: i=", i, "s[i]=", s[i], " len(s) - 1 - i=", len(s) - 1 - i)
        if s[i] == s[len(s) - 1 - i]: # <--- How many times is this line reached?
            print("--Q2: s[i]=", s[i], )
            matches = matches + 1
 

    return matches == (len(s) // 2)

print(mystery('civil'))

#Q2 2
#Q3 Return True if and only if s is equal to the reverse of s.


def shift_right(L):
    ''' (list) -> NoneType

    Shift each item in L one position to the right and shift the last item to the first position.

    Precondition: len(L) >= 1
    '''

    last_item = L[-1]

    for i in range(1, len(L)):
        L[len(L) - i] = L[len(L) - i - 1]

    L[0] = last_item

List = ["hello", "konnichiwa", "guten tag", "bye"]
print("Q4: orig=", List)
shift_right(List)
print("Q4: shiftR=", List)
nList = [1, 2, 3, 4, 5, 6, 7]
print("Q4: orig=", nList)
shift_right(nList)
print("Q4: shiftR=", nList)

#Q4 for i in range(1, len(L)):
#        L[len(L) - i] = L[len(L) - i - 1]

def make_pairs(list1, list2):
    ''' (list of str, list of int) -> list of [str, int] list

    Return a new list in which each item is a 2-item list with
    the string from the corresponding position of list1 and the
    int from the corresponding position of list2.

    Precondition: len(list1) == len(list2)

    >>> make_pairs(['A', 'B', 'C'], [1, 2, 3])
    [['A', 1], ['B', 2], ['C', 3]]
    '''

    pairs = []

    for i in range(len(list1)):
        inner_list = []
        inner_list.append(list1[i])
        inner_list.append(list2[i])
        pairs.append(inner_list)

    return pairs

print("Q5:", make_pairs(['A', 'B', 'C'], [1, 2, 3]))

#2

#Question 6
values = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
print("Q6:", values[1][1])

#Question 7
breakfast = [['French', 'toast'], ['blueberry', 'pancakes'], ['scrambled', 'eggs']]
treats = [['apple', 'pie'], ['vanilla', 'ice-cream'], ['chocolate', 'cake']]
print("Q7:", breakfast[-2][-2])
print("Q7:", treats[-3][-1])

#Question 8
count = 0
for i in range(2, 5):
    for j in range(4, 9):
        # print(i, j)
        count += 1
print("Q8:", count)

#Question 9

def contains(value, lst):
    """ (object, list of list) -> bool
  
    Return whether value is an element of one of the nested        lists in lst.

    >>> contains('moogah', [[70, 'blue'], [1.24, 90, 'moogah'],    [80, 100]])
    True
    """
    found = False

    for sublist in lst:
        if value in sublist:
            found = True

    return found

List = [[70, 'blue'], [1.24, 90, 'moogah'], [80, 100]]
print("Q9:", List)
print("\tQ9: moogah",contains('moogah', List))
print("\tQ9: 1.25",contains(1.25, List))
print("\tQ9: 1.24",contains(1.24, List))
print("\tQ9: blue",contains("blue", List))
print("\tQ9: red",contains("red", List))

#Q10 The readline approach

# Question 11?
# data_file refers to a file open for reading.
flanders_filename = 'FlandersField.txt'
flanders_file = open(flanders_filename, 'r')
print('Question 11: FlandersField.txt')
for line in flanders_file:
     print(line.strip())
     print('\t', line.rstrip('\n'))
     print('\t\t', line, end='')

     
flanders_file.close()



# Question 12?
# data_file refers to a file open for reading.

def lines_startswith(filename, letter):
    """ (file open for reading, str) -> list of str

    Return the list of lines from file that begin with letter.
    The lines should have the newline removed.

    Precondition: len(letter) == 1
    """

    matches = []
    file = open(filename, 'r')
    print('Question 12: FlandersField.txt')

    for line in file:
        if letter == line[0]:
            matches.append(line.rstrip('\n'))

    file.close()
    return matches

print(lines_startswith('FlandersField-Q12.txt', 'T'))

# Exception: matches.append(line.startswith(letter).rstrip('\n'))

#Question 13
def write_to_file(file, sentences):
    """ (file open for writing, list of str) -> NoneType

    Write each sentence from sentences to file, one per line.

    Precondition: the sentences contain no newlines.
    """

    for s in sentences:
        file.write(s + '\n')


file = open('Question13a.txt', 'w')
write_to_file(file, ["I like Okinawa.", "I like neighbours", "It is a nice island."])
file.close()
print("Q13:")
