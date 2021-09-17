import cpp

from Macro m
where m.getName() in ["ntohs", "ntohl", "ntohll"]
select m, "a macro named " + m.getName()
