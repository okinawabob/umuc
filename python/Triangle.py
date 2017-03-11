# Triangle Shape functions
# by Robert Laurie

def area(b, h) :
    '''(number, number) -> float

    Parameters:(base, height)
    Return the area of a triangle as number

    Examples:
    >>> area(3, 4)
    6.0
    >>> area(5.5,6.5)
    17.875
    '''

    return 0.5 * b * h


def hyp(b, h):
    '''(number, number) -> float

    Parameters:(base, height)
    Return the hypoteneus of a triangle as number

    Examples:
    >>> hyp(3, 4)
    6.0
    >>> hyp(5.5,6.5)
    17.875
    '''
    
    return pow(b**2 + h**2, 0.5)

def perimeter_bh(base, height):
    '''(number, number) -> float

    Parameters:(base, height)
    Return the perimeter of a triangle as number

    Examples:
    >>> perimeter_bh(3,4)
    12.0
    >>> perimeter_bh(5.5,6.5)
    20.5146931829632
    '''
    
    return base + height + hyp(base, height)

def perimeter(side1, side2=None, side3=None):
    '''(number[, number[, number]]) -> number

    FUNCTION OVERLOADING EXAMPLE
    
    Parameters:(side1, side2, side3)
    Return the perimeter of a triangle as number
    Examples:
    >>> perimeter(3, 4, 5)
    12
    >>> perimeter(5.5,6.5, 10)
    22.0

    Parameters:(side1, side2)
    Return the perimeter of an isosceles triangle as number
    Examples:
    >>> perimeter(3, 4)
    10
    >>> perimeter(5.5,6.5)
    17.5

    Parameters:(side1)
    Return the perimeter of an equilateral triangle as number
    Examples:
    >>> perimeter(5)
    15
    >>> perimeter(6.5)
    19.5
    '''
    if side3 == None :
        if side2 == None :
            return side1 * 3
        else :
            return side1 * 2 + side2
    else :
        return side1 + side2 + side3

