
% =================================================================
% helpers
:-consult(data).

% count number of the element in the list


% the base case of count predicate
% if the list is empty return zero

count([], 0).


% the recusive case of count predicate
% we ignore the first element and call the same predicate with the rest of the elements
% and we calulate the number of the elements and return it in R

count([_|T],R):-
    count(T, R2),
    R is R2+1.


% =================================================================


% insert new element to the list




% the base case of append predicate
% if the first list is empty return the second list

append([],L2,L2).

% the recusive case of append predicate
% we add the first element of the first list to the second list every time
% and return the new list in [H|R]

append([H|T],L2,[H|R]):-
    append(T,L2,R).


% =================================================================
% Task 1



% the list_orders predicate take the customer name (X) and return the L
% and then call listOrderNum and pass the empty list and 1 (the first order) and the customer id and reutrn the L

%list_orders(X, L) :-



%=======================================================================
% Task 2




% count the number of orders of the specified customer




%countOrdersOfCustomer(X, Count):-



%=======================================================================
% Task 3

% getItemsInOrderById predicate take the CustomerName and the OrderId and return the items

%getItemsInOrderById(CustomerName, OrderId ,Items):-



%=======================================================================
% Task 4


% getNumOfItems predicate take the CustomerName and the OrderId and return the number of items in the order

getNumOfItems(CustomerName, OrderId ,Count):-
    customer(X, CustomerName),  % get the customer id (X)
    order(X, OrderId, Items), % get the items
    count(Items, Count).  % get the number of items in the order (Count)


%=======================================================================
% Task 5

% calcPriceOfOrder take the CustomerName and OrderId and reutrn the TotalPrice of the items


% calcPriceOfOrder(CustomerName, OrderId ,TotalPrice):-



%=======================================================================
% Task 6

% isBoycott take the item name and reutrn if is isBoycott or not

% isBoycott(ItemName):-



%=======================================================================
% Task 7


% whyToBoycott take the item name and return the Justification that why this item isBoycott

%whyToBoycott(ItemName, Justification):-


% whyToBoycott take the company name and return the Justification that why this item isBoycott

%whyToBoycott(CompanyName, Justification):-


%=======================================================================
% Task 8



% removeBoycottItemsFromAnOrder take the CustomerName and OrderId and return the list of items
% after remove the boycott item from the list

%removeBoycottItemsFromAnOrder(CustomerName, OrderId, NewList):-



%=======================================================================
% Task 9

% replaceBoycottItemsFromAnOrder predicate take the CustomerName and OrderId and return the list of items
% after replace the boycott item with the alternative

%replaceBoycottItemsFromAnOrder(CustomerName, OrderId, NewList) :-



%=======================================================================
% Task 10

% calcPriceAfterReplacingBoycottItemsFromAnOrder predicate is used to calculate the price after replacing BoycottItem with the alternative Items
% take the customer name and order id and return the NewList after replacing the items and the TotalPrice

% calcPriceAfterReplacingBoycottItemsFromAnOrder(CustomerName, OrderId, NewList, TotalPrice):-


%=======================================================================
% Task 11

% getTheDifferenceInPriceBetweenItemAndAlternative predicate
% take the item and return the alternative and the differnce price between them

% getTheDifferenceInPriceBetweenItemAndAlternative(Item, Alte, DiffPrice):-



%=======================================================================
% Task 12


% add item using assert

:- dynamic item/3.

add_item(ItemName, Company, Price):-
    assert(item(ItemName, Company, Price)).

% remove item using retract

remove_item(ItemName, Company, Price):-
    retract(item(ItemName, Company, Price)).

% add alternative using assert

:- dynamic alternative/2.

add_alternative(BoycattItem, AlternativeItem):-
    assert(alternative(BoycattItem, AlternativeItem)).

% remove alternative using retract

remove_alternative(BoycattItem, AlternativeItem):-
    retract(alternative(BoycattItem, AlternativeItem)).


% add boycott_company using assert

:- dynamic boycott_company/2.

add_boycott_company(BoycattCompany, Justification):-
    assert(boycott_company(BoycattCompany, Justification)).

% remove boycott_company using retract

remove_boycott_company(BoycattCompany, Justification):-
    retract(boycott_company(BoycattCompany, Justification)).













