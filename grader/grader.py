from lib2to3.pgen2.token import COMMENT
from xml.etree.ElementTree import Comment


# Simple cli grader D-A in a loop
while True:
    grade = int(input('Grade:'))
    if grade >= 90:
        print('Grade A')
    elif grade < 90 and grade >= 75:
        print('Grade B')
    elif grade < 75 and grade >= 60:
        print('Grade C')
    else:
        print('Grade D')