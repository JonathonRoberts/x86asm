global fib

section .data

limit dq 0x3D0900
section .text

fib:
   mov edi, 2
   mov ecx, 2,
   push 1
   push 2

loop:
   mov eax, [esp]
   add eax, [esp+4]
   push eax,
   xor edx, edx
   mov ebx, 2
   push ecx
   div ebx
   pop ecx,
   cmp edx, 0
   jne odd
even:
   cmp eax, [limit]
   jg clearstack
   add edi, [esp]
odd:
   mov eax, [esp]
   cmp eax, [limit]
   jle loop

clearstack:
   pop eax,
   cmp eax, 1
   jne clearstack

   mov eax, edi

   ret
