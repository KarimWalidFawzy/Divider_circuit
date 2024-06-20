# Divider_circuit
This is a mini-project I was working on, a Binary division circuit.
Division is one the most frustrating algorithms to implement using logic gates, so I always wanted to have a division circuit.
These are my 2 approaches, one combinational which uses float numbers as outputs where 32 bits are the integer dividend and 64 bit-precision for the fractional part, and the other is sequential, both of which have their Advantages and Disadvantages.

# Combinational Adv./Disadv.:
- Adv.: Faster than sequential, as you don't have to wait for clock edges
- Disadv.: Uses a LOT of gates meaning it will cost a lot in terms of money
- Disadv.: Long delay, since you have 64 subtract and shift operations, meaning if it whould be implemented as a part of a processor, the processor whould have a low frequency range
# Sequential Adv./Disadv.: 
- Adv.: Much less gates
- Adv.: Can handle higher frequencies
- Adv.: Can be implemented as a seperate module so the processor can do something seperate in the meantime.
- Disadv: Much slower 
