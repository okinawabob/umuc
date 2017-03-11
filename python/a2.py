def get_length(dna):
    """ (str) -> int

    Return the length of the DNA sequence dna.

    >>> get_length('ATCGAT')
    6
    >>> get_length('ATCG')
    4
    """
    return len(dna)


def is_longer(dna1, dna2):
    """ (str, str) -> bool

    Return True if and only if DNA sequence dna1 is longer than DNA sequence
    dna2.

    >>> is_longer('ATCG', 'AT')
    True
    >>> is_longer('ATCG', 'ATCGGA')
    False
    """
    return len(dna1) > len(dna2)


def count_nucleotides(dna, nucleotide):
    """ (str, str) -> int

    Return the number of occurrences of nucleotide in the DNA sequence dna.

    >>> count_nucleotides('ATCGGC', 'G')
    2
    >>> count_nucleotides('ATCTA', 'G')
    0
    """
    return dna.count(nucleotide)

def contains_sequence(dna1, dna2):
    """ (str, str) -> bool

    Return True if and only if DNA sequence dna2 occurs in the DNA sequence
    dna1.

    >>> contains_sequence('ATCGGC', 'GG')
    True
    >>> contains_sequence('ATCGGC', 'GT')
    False

    """
    return dna1.find(dna2) != -1

def is_valid_sequence(dna):

    """ (str) -> bool

    Return True if valid DNA Nucleotide sequence composed of
    A, T, C, or G characters only and must be upper case.

    >>> is_valid_sequence('ATCGGC')
    True
    >>> is_valid_sequence('ATCGBGC')
    False
    """
    for char in dna:
        if char not in 'ATCG':
            return False
    return True
            

def insert_sequence(dna, seq, index):
    """ (str) -> str

    Return string composed of A, T, C, or G
    characters with seq inserted in dna at position index.

    >>> insert_sequence('CG', 'A', 1)
    'CAG'
    >>> insert_sequence('CCGG', 'AT', 2)
    'CCATGG'
    >>> insert_sequence('ATCGCGC', 'CCCCC', 1)
    'ACCCCCTCGCGC'
    """
    return dna[0:index] + seq + dna[index:]

def get_complement(nucleotide):
    """ (str) -> str

    Return nucleotide complement: A=T   C=G

    >>> get_complement('A')
    'T'
    >>> get_complement('T')
    'A'
    >>> get_complement('C')
    'G'
    >>> get_complement('G')
    'C'
    """
    if nucleotide == 'A':
        complement = 'T'
    elif nucleotide == 'T':
        complement = 'A'
    elif nucleotide == 'C':
        complement = 'G'
    elif nucleotide == 'G':
        complement = 'C'
    else:
        complement = 'Error: ' + nucleotide
    return complement
    

def get_complementary_sequence(dna):
    """ (str) -> str

    Return the complimentary DNA string.

    >>> get_complementary_sequence('AT')
    'TA'
    >>> get_complementary_sequence('ACGT')
    'TGCA'
    >>> get_complementary_sequence('GGCCTT')
    'CCGGAA'
    """
    complement = ''
    for char in dna:
        complement += get_complement(char)
    return complement
    
