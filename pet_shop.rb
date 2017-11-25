def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop,amount)
  pet_shop[:admin][:total_cash] += amount
end

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, number_sold)
  pet_shop[:admin][:pets_sold] += number_sold
end

def stock_count(pet_shop)
  return pet_shop[:pets].count
end

def pets_by_breed(pet_shop, pet_breed)
  pets = []
  for pet in pet_shop[:pets]
    if pet[:breed] == pet_breed
      pets.push(pet)
    end
  end
  return pets
end

def find_pet_by_name(pet_shop, pet_to_find)
  for pet in pet_shop[:pets]
    if pet[:name] == pet_to_find
      return pet
    end
  end
  return nil
end
#Got this one working eventually but took a while to figure
#out how to get it to return nil in the right place!

def remove_pet_by_name(pet_shop, pet_to_remove)
  index = 0
  for pet in pet_shop[:pets]
    if pet[:name] == pet_to_remove
      pet_index = index
    end
    index += 1
  end
  pet_shop[:pets].delete_at(pet_index)
end
#^This one works, but it seems like there should be an
#easier way to find the correct pet to delete?!
#Ask about this one in the homework review

def add_pet_to_stock(pet_shop, new_pet)
  pet_shop[:pets].push(new_pet)
end

def customer_pet_count(customer)
  return customer[:pets].count
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
end

def customer_can_afford_pet(customer, new_pet)
  if customer[:cash] >= new_pet[:price]
    return true
  else
    return false
  end
end
