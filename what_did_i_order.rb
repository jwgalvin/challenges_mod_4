# menu = {
#     'veggie sandwich' => 6.85,
#     'extra veggies' => 2.20,
#     'chicken sandwich' => 7.85,
#     'extra chicken' => 3.20,
#     'cheese' => 1.25,
#     'chips' => 1.40,
#     'nachos' => 3.45,
#     'soda' => 2.05,
#   }
# receipts = [4.85, 11.05, 13.75, 17.75, 18.25, 19.40, 28.25, 40.30, 75.00]

#given the number in a receipt, calculate which combination of foods can be the be the first solution.

# The first thing to do is to make sure that only menu items that have a total less than the receipt total are used in the calculation to come up with the result.
# After you have that, start with the most expensive item available and subtract its value from the total, then see if any other menu item equals the remainder, or is a multiple of the remainder, or if another item can fit within the remainder of the remainder.
