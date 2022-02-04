###########################################################
# Assignment #: 2
#  Name: Matthew Groholski
#  ASU email: mgrohols@asu.edu
#  Course: CSE/EEE230, TTh 3PM
#  Description: This is assignment 2, which will use syscall, perform arith and operations
###########################################################
.data
message1:.asciiz "num1 is: "
num1: .word 69482
num2: .word 0xBC7
message2: .asciiz "\nnum2 is: "
message3: .asciiz "\nnum1+num2 = "
message4: .asciiz "\nnum1-num2 = "

.text
.globl main

main:
la          $a0, message1  # $a0 = address of message1
li           $v0, 4                # $v0 = 4  --- this is to call print_string()
syscall                           # call print_string()
lw $a0, num1
lw $a1, num1
li $v0, 1 
syscall   #prints num1
la $a0, message2
li $v0, 4
syscall
lw $a0, num2
lw $a2, num2
li $v0, 1
syscall
la $a0, message3
li $v0, 4
syscall
add $a0, $a1, $a2
li $v0, 1
syscall
la $a0, message4
li $v0, 4
syscall
sub $a0, $a1, $a2
li $v0, 1
syscall
jr $ra