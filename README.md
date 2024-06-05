# Customer Orders and Boycott Management in Prolog

This Prolog project provides a set of predicates to manage customer orders, determine boycott items and their alternatives, and perform various operations on the provided data. The main functionality includes listing orders, counting orders, calculating prices, and handling boycott information.

## Project Structure

- `data.pl`: Contains the facts about customers, items, orders, boycott companies, and their alternatives.
- `main.pl`: Contains the required predicates to solve the problem statements.

## Facts (data.pl)

The `data.pl` file includes facts in the following format:

customer(CustID, CustUserName).

item(ItemName, CompanyName, Price).

order(CustID, OrderID, [Items]).

boycott_company(CompanyName, Justification).

alternative(ItemName, AlternativeItem).

- Example facts:

      customer(104, mazen122).

      item(pepsi, 'PepsiCo', 8.5).

      order(1, 1, [ariel_4k, biskrem, cheese]).

      boycott_company('PepsiCo', 'PepsiCo purchased the ...').

      alternative(chipsy, tiger).

## Required Predicates

1. **List all orders of a specific customer (as a list)**
   
   list_orders(CustomerUsername, OrdersList).

   Example usage:

       ?- list_orders(shahd_ghazal2002, L).
   
       L = [order(101, 2, [loreal_hair_serum_100ml, sunsilk_shampoo_350ml]), order(101, 1, [puvana, orange_1k, feba_dishwash_1L, snickers, ahlawy])].

2. **Get the number of orders of a specific customer given customer ID**
   
   countOrdersOfCustomer(CustomerUsername, Count).

   Example usage:

       ?- countOrdersOfCustomer(shahd_ghazal2002, Count).
   
       Count = 2.

3. **List all items in a specific customer order given customer ID and order ID**
   
   getItemsInOrderById(CustomerUsername, OrderID, Items).

   Example usage:

       ?- getItemsInOrderById(shahd_ghazal2002, 1, Items).
   
       Items = [puvana, orange_1k, feba_dishwash_1L, snickers, ahlawy].

4. **Get the number of items in a specific customer order given customer name and order ID**
   
   getNumOfItems(CustomerUsername, OrderID, Count).

   Example usage:

       ?- getNumOfItems(shahd_ghazal2002, 2, Count).
   
       Count = 2.

5. **Calculate the price of a given order given customer name and order ID**
   
   calcPriceOfOrder(CustomerUsername, OrderID, TotalPrice).

   Example usage:

       ?- calcPriceOfOrder(shahd_ghazal2002, 2, TotalPrice).
 
       TotalPrice = 319.

6. **Given the item name or company name, determine whether we need to boycott or not**
   
   isBoycott(ItemOrCompanyName).

   Example usage:

       ?- isBoycott(sunbites).

       true.

       ?- isBoycott(biskrem).

       false.

7. **Given the company name or an item name, find the justification why you need to boycott this company/item**
   
   whyToBoycott(ItemOrCompanyName, Justification).

   Example usage:

       ?- whyToBoycott(dasani, Justification).

       Justification = 'Coca-Cola israel: owns farms in the illegal israeli settlements of Shadmot Mechola in the Jordan Valley and a plant in the industrial zone of Katzerin in the occupied Golan Heights'.

8. **Given a username and order ID, remove all the boycott items from this order**
   
   removeBoycottItemsFromAnOrder(CustomerUsername, OrderID, NewList).

   Example usage:

       ?- removeBoycottItemsFromAnOrder(abu_juliaa, 1, NewList).
   
       NewList = [flour_1k].

9. **Given a username and order ID, update the order such that all boycott items are replaced by an alternative (if exists)**

   replaceBoycottItemsFromAnOrder(CustomerUsername, OrderID, NewList).

   Example usage:

       ?- replaceBoycottItemsFromAnOrder(abu_juliaa, 1, NewList).
   
       NewList = [juhayna_yogurt, corona_chocolate, puvana, flour_1k].

10. **Given a username and order ID, calculate the price of the order after replacing all boycott items by its alternative (if it exists)**

    calcPriceAfterReplacingBoycottItemsFromAnOrder(CustomerUsername, OrderID, NewList, TotalPrice).

    Example usage:

        ?- calcPriceAfterReplacingBoycottItemsFromAnOrder(abu_juliaa, 1, NewList, TotalPrice).

        NewList = [juhayna_yogurt, corona_chocolate, puvana, flour_1k],

        TotalPrice = 56.


11. **Calculate the difference in price between the boycott item and its alternative**
   
   getTheDifferenceInPriceBetweenItemAndAlternative(ItemName, AlternativeItem, DiffPrice).

   Example usage:

    ?- getTheDifferenceInPriceBetweenItemAndAlternative(lipton, A, DiffPrice).
   
    A = elarosa_tea,
   
    DiffPrice = -11.25.

12. **Insert/Remove item, alternative, and new boycott company to/from the knowledge base**
    
    add_item(ItemName, CompanyName, Price).
    
    remove_item(ItemName, CompanyName, Price).
    
    add_alternative(ItemName, AlternativeItem).
    
    remove_alternative(ItemName, AlternativeItem).
    
    add_boycott_company(CompanyName, Justification).
    
    remove_boycott_company(CompanyName, Justification).

    Example usage:

        ?- add_item(alpella_wafer, 'Alpella', 4).
    
        true.
    
        ?- item(alpella_wafer, 'Alpella', 4).
    
        true.
    
        ?- remove_item(alpella_wafer, 'Alpella', 4).
    
        true.
    
        ?- item(alpella_wafer, 'Alpella', 4).
    
        false.

## Usage

1. Load the facts from `data.pl` and the predicates from `main.pl` in your Prolog environment.
2. Query the required predicates as shown in the examples.

## Contributors

We would like to thank the following contributors to this project:

- [**Shahd Osama**](https://github.com/shahdosama10).
  
- [**Ahmed Saad**](https://github.com/ahmedsaad123456).
  
- [**Ahmed Adel**](https://github.com/Dola112).

---

Feel free to contribute to this project by opening issues or submitting pull requests.
