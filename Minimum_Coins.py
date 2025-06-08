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
  
  
  
    
  
  
  

'''
def find_number(n, k): # where n denotes the target and k denotes the set
  # in explored_avenues, None is going to represent not known

  print(f"this is n: {n}")
  print(f"this is k: {k}")
  if n == 0:
    print("n==0 has been found")
    print(f"this is n: {n}")
    print(f"this is k: {k}")
    return True
  if len(k) == 0:
    print("all numbers have been used")
    return False
  #print(f"this is explored_avenues {explored_avenues}")
  #print(f"this is n: {n}")
  if explored_avenues[(n-k[-1])][len(k[:-1])] == False: 
    pass
  else:
    if n < k[-1]:
      pass
    else:
      recursive_result = find_number(n-k[-1], k[:-1])
      explored_avenues[(n-k[-1])][len(k[:-1])] = recursive_result
      #print("entered1")
      print(f"this is k[-1]: {k[-1]}")
      if recursive_result == True and k[-1] == 2:
        print(f"this is explored_avenues[{n}] {explored_avenues[n]}")
      if recursive_result:
        return True
  if explored_avenues[n][len(k[:-1])] == False:
    print("we've entered this if")
    pass
  else:
    recursive_result = find_number(n, k[:-1])
    explored_avenues[n][len(k[:-1])] = recursive_result
    print(f"this is k: {k}")
    if recursive_result == True:
      print("hi")
      print(f"this is explored_avenues[{n}] {explored_avenues[n]}")
    #print("entered")
    if recursive_result:
      return True
  #print("this is where we've ended up")
  return False
'''


