combos = []
# is going to be a list, that has as many nested lists as their are  coin_possibilities
global initial_target
initial_target = 0

global possible_combo
possible_combo = []

def possibility(target, coin_possibilities): 
  '''
  Where target is a number
  Where coin_possibilities is a list
  '''
  #print(f"this is target: {target}, this is coin_possibilities: {coin_possibilities}")
  global initial_target
  global possible_combo
  global is_known
  if initial_target == 0:
    initial_target = target
  coin_possiblities = sorted(coin_possibilities)
  #if (target % (coin_possibilities[-1])) == 0:
  #  minimum_amount_of_coins = [coin_possibilities[-1] for i in range(int(target / coin_possibilities[-1]))] 
  #  return minimum_amount_of_coins
  if target == 0:
    #print("True has been returned")
    return True
  if target < 0: # all coins have been used:
    #print(f"this is ")
    return False
  for i in reversed(range(len(coin_possibilities))):  
    new_t = target - coin_possibilities[i]
    if is_known[new_t] is not None:
        recursive_result = is_known[new_t]
    else:
        recursive_result = possibility(new_t, coin_possibilities)
        is_known[new_t] = recursive_result
    if recursive_result == True and (target == initial_target):
        possible_combo.append(coin_possibilities[i])
        return possible_combo
    else:
      # this case will be important
        if recursive_result == True:
            possible_combo.append(coin_possibilities[i])
            return recursive_result
    # understood the following if/else branch
  return False

m = 1000
is_known = [None for _ in range(m)] # your range should be m+1 even though some spaces might be left blank depending on the numbers inputted into the possibility() function for coin_possilbities
print(possibility(1006, [1,2,5,10]))
