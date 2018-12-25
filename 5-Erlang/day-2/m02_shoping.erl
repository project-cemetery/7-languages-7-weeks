-module(m02_shoping).
-export([shoping_list/1]).

shoping_list(Data) -> [{Item, Quatity * Price} || { Item, Quatity, Price } <- Data].
