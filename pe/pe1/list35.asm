global list35
extern printf

section .data


section .text

list35:

   mov  eax, 3        ; counter
   ;[esp + 4] ; limit = 0x3e8
   push 0,              ;answer

loop:
   xor edx, edx
   push eax
   mov ecx, 3    ; divisor
   div ecx
   pop eax
   cmp edx, 0
   je inc
   push eax
   xor edx, edx
   mov ecx, 5
   div ecx
   pop eax,
   cmp edx, 0
   je inc
   add eax, 1
   cmp eax, 0x3e8
   jl loop
   jmp end

inc:
   pop ebx,
   add ebx, eax
   push ebx,
   add eax, 1
   cmp eax, 0x3e8
   jge end
   jmp loop

 end:
 pop eax,
    ret
