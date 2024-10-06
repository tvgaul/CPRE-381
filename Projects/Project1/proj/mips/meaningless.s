
.text
addi $t0, $zero, 10
addi $t1, $zero, -1
here:
add $t0, $t0, $t1
bgez $t0 here
halt
