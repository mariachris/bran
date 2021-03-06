pragma solidity ^0.4.0;

contract Fail4 {
    function add(int a, int b) public pure returns (int) {
        if (a > b) {
            b = 10;
        } else {
            b = 20;
        }
        while (a != b) {
            a = a + 1;
        }
        assert(a == b);
    }
}

/*
606060405260043610603f576000357c0100000000000000000000000000000000000000000000000000000000900463ffffffff168063a5f3c23b146044575b600080fd5b3415604e57600080fd5b606b60048080359060200190919080359060200190919050506081565b6040518082815260200191505060405180910390f35b600081831315609257600a91506097565b601491505b5b818314151560aa576001830192506098565b818314151560b457fe5b929150505600a165627a7a72305820c15169ccc5bf594d2a42e932740335ce3f0480741fee7256524b144ff186ca4000
0      PUSH1  => 96
2      PUSH1  => 64
4      MSTORE
5      PUSH1  => 4
7      CALLDATASIZE
8      LT
9      PUSH1  => 63
11     JUMPI
12     PUSH1  => 0
14     CALLDATALOAD
15     PUSH29  => 9223372036854775807
45     SWAP1
46     DIV
47     PUSH4  => 4294967295
52     AND
53     DUP1
54     PUSH4  => 2784215611
59     EQ
60     PUSH1  => 68
62     JUMPI
63     JUMPDEST
64     PUSH1  => 0
66     DUP1
67     REVERT
68     JUMPDEST
69     CALLVALUE
70     ISZERO
71     PUSH1  => 78
73     JUMPI
74     PUSH1  => 0
76     DUP1
77     REVERT
78     JUMPDEST
79     PUSH1  => 107
81     PUSH1  => 4
83     DUP1
84     DUP1
85     CALLDATALOAD
86     SWAP1
87     PUSH1  => 32
89     ADD
90     SWAP1
91     SWAP2
92     SWAP1
93     DUP1
94     CALLDATALOAD
95     SWAP1
96     PUSH1  => 32
98     ADD
99     SWAP1
100    SWAP2
101    SWAP1
102    POP
103    POP
104    PUSH1  => 129
106    JUMP
107    JUMPDEST
108    PUSH1  => 64
110    MLOAD
111    DUP1
112    DUP3
113    DUP2
114    MSTORE
115    PUSH1  => 32
117    ADD
118    SWAP2
119    POP
120    POP
121    PUSH1  => 64
123    MLOAD
124    DUP1
125    SWAP2
126    SUB
127    SWAP1
128    RETURN
129    JUMPDEST
130    PUSH1  => 0
132    DUP2
133    DUP4
134    SGT
135    ISZERO
136    PUSH1  => 146
138    JUMPI
139    PUSH1  => 10
141    SWAP2
142    POP
143    PUSH1  => 151
145    JUMP
146    JUMPDEST
147    PUSH1  => 20
149    SWAP2
150    POP
151    JUMPDEST
152    JUMPDEST
153    DUP2
154    DUP4
155    EQ
156    ISZERO
157    ISZERO
158    PUSH1  => 170
160    JUMPI
161    PUSH1  => 1
163    DUP4
164    ADD
165    SWAP3
166    POP
167    PUSH1  => 152
169    JUMP
170    JUMPDEST
171    DUP2
172    DUP4
173    EQ
174    ISZERO
175    ISZERO
176    PUSH1  => 180
178    JUMPI
179    Missing opcode 0xfe
180    JUMPDEST
181    SWAP3
182    SWAP2
183    POP
184    POP
185    JUMP
186    STOP
187    LOG1
188    PUSH6  => 108278179835992
195    SHA3
196    Missing opcode 0xc1
197    MLOAD
198    PUSH10  => 9223372036854775807
209    SUB
210    CALLDATALOAD
211    Missing opcode 0xce
212    Missing opcode 0x3f
213    DIV
214    DUP1
215    PUSH21  => 9223372036854775807
*/
