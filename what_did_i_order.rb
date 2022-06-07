#base case =  terminating scenario

#recursive case = when to continue and inch towards the final result

#what do I want the output to look like?
#what arguments do I need to call?
    #sorted_menu, receipts, working total?
#when to end
   #when receipts.length = 0 ?
   #output = Object and quantity.
   #Pull out first receipt value, and compare to the sorted_menu items if receipt is less than menu item, skip to next menu item.
   # if receipt is greater than menu item, if the == 0 return output.

require 'pry'
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
#while loop?


# class Magic
#   def initialize
    @menu = {
        'veggie sandwich' => 6.85,
        'extra veggies' => 2.20,
        'chicken sandwich' => 7.85,
        'extra chicken' => 3.20,
        'cheese' => 1.25,
        'chips' => 1.40,
        'nachos' => 3.45,
        'soda' => 2.05,
      }
  # end

  sorted_menu = @menu.sort_by {|k,v| -v}
  binding.pry
  receipts = [4.85, 11.05, 13.75, 17.75, 18.25, 19.40, 28.25, 40.30, 75.00]


  def find_order(receipts, sorted_menu)
    #for i = 0; i < receipt.length, i++
    #if receipt > menu[i]
      #new_total = receipt - menu[i].value
  end

  receipts.each do |value|
    find_order(receipts, sorted_menu)
  end
# end
