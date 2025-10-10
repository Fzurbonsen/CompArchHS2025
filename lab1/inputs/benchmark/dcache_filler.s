.data
array: .space 65536
.text
.globl main
main:
la $s0, array
addi $t0, $zero, 0
sw $t0, 0($s0)
lw $t1, 0($s0)
add $t2, $t1, $t0

addi $t0, $zero, 1
sw $t0, 4($s0)
lw $t1, 4($s0)
add $t2, $t1, $t0

addi $t0, $zero, 2
sw $t0, 8($s0)
lw $t1, 8($s0)
add $t2, $t1, $t0

addi $t0, $zero, 3
sw $t0, 12($s0)
lw $t1, 12($s0)
add $t2, $t1, $t0

addi $t0, $zero, 4
sw $t0, 16($s0)
lw $t1, 16($s0)
add $t2, $t1, $t0

addi $t0, $zero, 5
sw $t0, 20($s0)
lw $t1, 20($s0)
add $t2, $t1, $t0

addi $t0, $zero, 6
sw $t0, 24($s0)
lw $t1, 24($s0)
add $t2, $t1, $t0

addi $t0, $zero, 7
sw $t0, 28($s0)
lw $t1, 28($s0)
add $t2, $t1, $t0

addi $t0, $zero, 8
sw $t0, 32($s0)
lw $t1, 32($s0)
add $t2, $t1, $t0

addi $t0, $zero, 9
sw $t0, 36($s0)
lw $t1, 36($s0)
add $t2, $t1, $t0

addi $t0, $zero, 10
sw $t0, 40($s0)
lw $t1, 40($s0)
add $t2, $t1, $t0

addi $t0, $zero, 11
sw $t0, 44($s0)
lw $t1, 44($s0)
add $t2, $t1, $t0

addi $t0, $zero, 12
sw $t0, 48($s0)
lw $t1, 48($s0)
add $t2, $t1, $t0

addi $t0, $zero, 13
sw $t0, 52($s0)
lw $t1, 52($s0)
add $t2, $t1, $t0

addi $t0, $zero, 14
sw $t0, 56($s0)
lw $t1, 56($s0)
add $t2, $t1, $t0

addi $t0, $zero, 15
sw $t0, 60($s0)
lw $t1, 60($s0)
add $t2, $t1, $t0

addi $t0, $zero, 16
sw $t0, 64($s0)
lw $t1, 64($s0)
add $t2, $t1, $t0

addi $t0, $zero, 17
sw $t0, 68($s0)
lw $t1, 68($s0)
add $t2, $t1, $t0

addi $t0, $zero, 18
sw $t0, 72($s0)
lw $t1, 72($s0)
add $t2, $t1, $t0

addi $t0, $zero, 19
sw $t0, 76($s0)
lw $t1, 76($s0)
add $t2, $t1, $t0

addi $t0, $zero, 20
sw $t0, 80($s0)
lw $t1, 80($s0)
add $t2, $t1, $t0

addi $t0, $zero, 21
sw $t0, 84($s0)
lw $t1, 84($s0)
add $t2, $t1, $t0

addi $t0, $zero, 22
sw $t0, 88($s0)
lw $t1, 88($s0)
add $t2, $t1, $t0

addi $t0, $zero, 23
sw $t0, 92($s0)
lw $t1, 92($s0)
add $t2, $t1, $t0

addi $t0, $zero, 24
sw $t0, 96($s0)
lw $t1, 96($s0)
add $t2, $t1, $t0

addi $t0, $zero, 25
sw $t0, 100($s0)
lw $t1, 100($s0)
add $t2, $t1, $t0

addi $t0, $zero, 26
sw $t0, 104($s0)
lw $t1, 104($s0)
add $t2, $t1, $t0

addi $t0, $zero, 27
sw $t0, 108($s0)
lw $t1, 108($s0)
add $t2, $t1, $t0

addi $t0, $zero, 28
sw $t0, 112($s0)
lw $t1, 112($s0)
add $t2, $t1, $t0

addi $t0, $zero, 29
sw $t0, 116($s0)
lw $t1, 116($s0)
add $t2, $t1, $t0

addi $t0, $zero, 30
sw $t0, 120($s0)
lw $t1, 120($s0)
add $t2, $t1, $t0

addi $t0, $zero, 31
sw $t0, 124($s0)
lw $t1, 124($s0)
add $t2, $t1, $t0

addi $t0, $zero, 32
sw $t0, 128($s0)
lw $t1, 128($s0)
add $t2, $t1, $t0

addi $t0, $zero, 33
sw $t0, 132($s0)
lw $t1, 132($s0)
add $t2, $t1, $t0

addi $t0, $zero, 34
sw $t0, 136($s0)
lw $t1, 136($s0)
add $t2, $t1, $t0

addi $t0, $zero, 35
sw $t0, 140($s0)
lw $t1, 140($s0)
add $t2, $t1, $t0

addi $t0, $zero, 36
sw $t0, 144($s0)
lw $t1, 144($s0)
add $t2, $t1, $t0

addi $t0, $zero, 37
sw $t0, 148($s0)
lw $t1, 148($s0)
add $t2, $t1, $t0

addi $t0, $zero, 38
sw $t0, 152($s0)
lw $t1, 152($s0)
add $t2, $t1, $t0

addi $t0, $zero, 39
sw $t0, 156($s0)
lw $t1, 156($s0)
add $t2, $t1, $t0

addi $t0, $zero, 40
sw $t0, 160($s0)
lw $t1, 160($s0)
add $t2, $t1, $t0

addi $t0, $zero, 41
sw $t0, 164($s0)
lw $t1, 164($s0)
add $t2, $t1, $t0

addi $t0, $zero, 42
sw $t0, 168($s0)
lw $t1, 168($s0)
add $t2, $t1, $t0

addi $t0, $zero, 43
sw $t0, 172($s0)
lw $t1, 172($s0)
add $t2, $t1, $t0

addi $t0, $zero, 44
sw $t0, 176($s0)
lw $t1, 176($s0)
add $t2, $t1, $t0

addi $t0, $zero, 45
sw $t0, 180($s0)
lw $t1, 180($s0)
add $t2, $t1, $t0

addi $t0, $zero, 46
sw $t0, 184($s0)
lw $t1, 184($s0)
add $t2, $t1, $t0

addi $t0, $zero, 47
sw $t0, 188($s0)
lw $t1, 188($s0)
add $t2, $t1, $t0

addi $t0, $zero, 48
sw $t0, 192($s0)
lw $t1, 192($s0)
add $t2, $t1, $t0

addi $t0, $zero, 49
sw $t0, 196($s0)
lw $t1, 196($s0)
add $t2, $t1, $t0

addi $t0, $zero, 50
sw $t0, 200($s0)
lw $t1, 200($s0)
add $t2, $t1, $t0

addi $t0, $zero, 51
sw $t0, 204($s0)
lw $t1, 204($s0)
add $t2, $t1, $t0

addi $t0, $zero, 52
sw $t0, 208($s0)
lw $t1, 208($s0)
add $t2, $t1, $t0

addi $t0, $zero, 53
sw $t0, 212($s0)
lw $t1, 212($s0)
add $t2, $t1, $t0

addi $t0, $zero, 54
sw $t0, 216($s0)
lw $t1, 216($s0)
add $t2, $t1, $t0

addi $t0, $zero, 55
sw $t0, 220($s0)
lw $t1, 220($s0)
add $t2, $t1, $t0

addi $t0, $zero, 56
sw $t0, 224($s0)
lw $t1, 224($s0)
add $t2, $t1, $t0

addi $t0, $zero, 57
sw $t0, 228($s0)
lw $t1, 228($s0)
add $t2, $t1, $t0

addi $t0, $zero, 58
sw $t0, 232($s0)
lw $t1, 232($s0)
add $t2, $t1, $t0

addi $t0, $zero, 59
sw $t0, 236($s0)
lw $t1, 236($s0)
add $t2, $t1, $t0

addi $t0, $zero, 60
sw $t0, 240($s0)
lw $t1, 240($s0)
add $t2, $t1, $t0

addi $t0, $zero, 61
sw $t0, 244($s0)
lw $t1, 244($s0)
add $t2, $t1, $t0

addi $t0, $zero, 62
sw $t0, 248($s0)
lw $t1, 248($s0)
add $t2, $t1, $t0

addi $t0, $zero, 63
sw $t0, 252($s0)
lw $t1, 252($s0)
add $t2, $t1, $t0

addi $t0, $zero, 64
sw $t0, 256($s0)
lw $t1, 256($s0)
add $t2, $t1, $t0

addi $t0, $zero, 65
sw $t0, 260($s0)
lw $t1, 260($s0)
add $t2, $t1, $t0

addi $t0, $zero, 66
sw $t0, 264($s0)
lw $t1, 264($s0)
add $t2, $t1, $t0

addi $t0, $zero, 67
sw $t0, 268($s0)
lw $t1, 268($s0)
add $t2, $t1, $t0

addi $t0, $zero, 68
sw $t0, 272($s0)
lw $t1, 272($s0)
add $t2, $t1, $t0

addi $t0, $zero, 69
sw $t0, 276($s0)
lw $t1, 276($s0)
add $t2, $t1, $t0

addi $t0, $zero, 70
sw $t0, 280($s0)
lw $t1, 280($s0)
add $t2, $t1, $t0

addi $t0, $zero, 71
sw $t0, 284($s0)
lw $t1, 284($s0)
add $t2, $t1, $t0

addi $t0, $zero, 72
sw $t0, 288($s0)
lw $t1, 288($s0)
add $t2, $t1, $t0

addi $t0, $zero, 73
sw $t0, 292($s0)
lw $t1, 292($s0)
add $t2, $t1, $t0

addi $t0, $zero, 74
sw $t0, 296($s0)
lw $t1, 296($s0)
add $t2, $t1, $t0

addi $t0, $zero, 75
sw $t0, 300($s0)
lw $t1, 300($s0)
add $t2, $t1, $t0

addi $t0, $zero, 76
sw $t0, 304($s0)
lw $t1, 304($s0)
add $t2, $t1, $t0

addi $t0, $zero, 77
sw $t0, 308($s0)
lw $t1, 308($s0)
add $t2, $t1, $t0

addi $t0, $zero, 78
sw $t0, 312($s0)
lw $t1, 312($s0)
add $t2, $t1, $t0

addi $t0, $zero, 79
sw $t0, 316($s0)
lw $t1, 316($s0)
add $t2, $t1, $t0

addi $t0, $zero, 80
sw $t0, 320($s0)
lw $t1, 320($s0)
add $t2, $t1, $t0

addi $t0, $zero, 81
sw $t0, 324($s0)
lw $t1, 324($s0)
add $t2, $t1, $t0

addi $t0, $zero, 82
sw $t0, 328($s0)
lw $t1, 328($s0)
add $t2, $t1, $t0

addi $t0, $zero, 83
sw $t0, 332($s0)
lw $t1, 332($s0)
add $t2, $t1, $t0

addi $t0, $zero, 84
sw $t0, 336($s0)
lw $t1, 336($s0)
add $t2, $t1, $t0

addi $t0, $zero, 85
sw $t0, 340($s0)
lw $t1, 340($s0)
add $t2, $t1, $t0

addi $t0, $zero, 86
sw $t0, 344($s0)
lw $t1, 344($s0)
add $t2, $t1, $t0

addi $t0, $zero, 87
sw $t0, 348($s0)
lw $t1, 348($s0)
add $t2, $t1, $t0

addi $t0, $zero, 88
sw $t0, 352($s0)
lw $t1, 352($s0)
add $t2, $t1, $t0

addi $t0, $zero, 89
sw $t0, 356($s0)
lw $t1, 356($s0)
add $t2, $t1, $t0

addi $t0, $zero, 90
sw $t0, 360($s0)
lw $t1, 360($s0)
add $t2, $t1, $t0

addi $t0, $zero, 91
sw $t0, 364($s0)
lw $t1, 364($s0)
add $t2, $t1, $t0

addi $t0, $zero, 92
sw $t0, 368($s0)
lw $t1, 368($s0)
add $t2, $t1, $t0

addi $t0, $zero, 93
sw $t0, 372($s0)
lw $t1, 372($s0)
add $t2, $t1, $t0

addi $t0, $zero, 94
sw $t0, 376($s0)
lw $t1, 376($s0)
add $t2, $t1, $t0

addi $t0, $zero, 95
sw $t0, 380($s0)
lw $t1, 380($s0)
add $t2, $t1, $t0

addi $t0, $zero, 96
sw $t0, 384($s0)
lw $t1, 384($s0)
add $t2, $t1, $t0

addi $t0, $zero, 97
sw $t0, 388($s0)
lw $t1, 388($s0)
add $t2, $t1, $t0

addi $t0, $zero, 98
sw $t0, 392($s0)
lw $t1, 392($s0)
add $t2, $t1, $t0

addi $t0, $zero, 99
sw $t0, 396($s0)
lw $t1, 396($s0)
add $t2, $t1, $t0

addi $t0, $zero, 100
sw $t0, 400($s0)
lw $t1, 400($s0)
add $t2, $t1, $t0

addi $t0, $zero, 101
sw $t0, 404($s0)
lw $t1, 404($s0)
add $t2, $t1, $t0

addi $t0, $zero, 102
sw $t0, 408($s0)
lw $t1, 408($s0)
add $t2, $t1, $t0

addi $t0, $zero, 103
sw $t0, 412($s0)
lw $t1, 412($s0)
add $t2, $t1, $t0

addi $t0, $zero, 104
sw $t0, 416($s0)
lw $t1, 416($s0)
add $t2, $t1, $t0

addi $t0, $zero, 105
sw $t0, 420($s0)
lw $t1, 420($s0)
add $t2, $t1, $t0

addi $t0, $zero, 106
sw $t0, 424($s0)
lw $t1, 424($s0)
add $t2, $t1, $t0

addi $t0, $zero, 107
sw $t0, 428($s0)
lw $t1, 428($s0)
add $t2, $t1, $t0

addi $t0, $zero, 108
sw $t0, 432($s0)
lw $t1, 432($s0)
add $t2, $t1, $t0

addi $t0, $zero, 109
sw $t0, 436($s0)
lw $t1, 436($s0)
add $t2, $t1, $t0

addi $t0, $zero, 110
sw $t0, 440($s0)
lw $t1, 440($s0)
add $t2, $t1, $t0

addi $t0, $zero, 111
sw $t0, 444($s0)
lw $t1, 444($s0)
add $t2, $t1, $t0

addi $t0, $zero, 112
sw $t0, 448($s0)
lw $t1, 448($s0)
add $t2, $t1, $t0

addi $t0, $zero, 113
sw $t0, 452($s0)
lw $t1, 452($s0)
add $t2, $t1, $t0

addi $t0, $zero, 114
sw $t0, 456($s0)
lw $t1, 456($s0)
add $t2, $t1, $t0

addi $t0, $zero, 115
sw $t0, 460($s0)
lw $t1, 460($s0)
add $t2, $t1, $t0

addi $t0, $zero, 116
sw $t0, 464($s0)
lw $t1, 464($s0)
add $t2, $t1, $t0

addi $t0, $zero, 117
sw $t0, 468($s0)
lw $t1, 468($s0)
add $t2, $t1, $t0

addi $t0, $zero, 118
sw $t0, 472($s0)
lw $t1, 472($s0)
add $t2, $t1, $t0

addi $t0, $zero, 119
sw $t0, 476($s0)
lw $t1, 476($s0)
add $t2, $t1, $t0

addi $t0, $zero, 120
sw $t0, 480($s0)
lw $t1, 480($s0)
add $t2, $t1, $t0

addi $t0, $zero, 121
sw $t0, 484($s0)
lw $t1, 484($s0)
add $t2, $t1, $t0

addi $t0, $zero, 122
sw $t0, 488($s0)
lw $t1, 488($s0)
add $t2, $t1, $t0

addi $t0, $zero, 123
sw $t0, 492($s0)
lw $t1, 492($s0)
add $t2, $t1, $t0

addi $t0, $zero, 124
sw $t0, 496($s0)
lw $t1, 496($s0)
add $t2, $t1, $t0

addi $t0, $zero, 125
sw $t0, 500($s0)
lw $t1, 500($s0)
add $t2, $t1, $t0

addi $t0, $zero, 126
sw $t0, 504($s0)
lw $t1, 504($s0)
add $t2, $t1, $t0

addi $t0, $zero, 127
sw $t0, 508($s0)
lw $t1, 508($s0)
add $t2, $t1, $t0

addi $t0, $zero, 128
sw $t0, 512($s0)
lw $t1, 512($s0)
add $t2, $t1, $t0

addi $t0, $zero, 129
sw $t0, 516($s0)
lw $t1, 516($s0)
add $t2, $t1, $t0

addi $t0, $zero, 130
sw $t0, 520($s0)
lw $t1, 520($s0)
add $t2, $t1, $t0

addi $t0, $zero, 131
sw $t0, 524($s0)
lw $t1, 524($s0)
add $t2, $t1, $t0

addi $t0, $zero, 132
sw $t0, 528($s0)
lw $t1, 528($s0)
add $t2, $t1, $t0

addi $t0, $zero, 133
sw $t0, 532($s0)
lw $t1, 532($s0)
add $t2, $t1, $t0

addi $t0, $zero, 134
sw $t0, 536($s0)
lw $t1, 536($s0)
add $t2, $t1, $t0

addi $t0, $zero, 135
sw $t0, 540($s0)
lw $t1, 540($s0)
add $t2, $t1, $t0

addi $t0, $zero, 136
sw $t0, 544($s0)
lw $t1, 544($s0)
add $t2, $t1, $t0

addi $t0, $zero, 137
sw $t0, 548($s0)
lw $t1, 548($s0)
add $t2, $t1, $t0

addi $t0, $zero, 138
sw $t0, 552($s0)
lw $t1, 552($s0)
add $t2, $t1, $t0

addi $t0, $zero, 139
sw $t0, 556($s0)
lw $t1, 556($s0)
add $t2, $t1, $t0

addi $t0, $zero, 140
sw $t0, 560($s0)
lw $t1, 560($s0)
add $t2, $t1, $t0

addi $t0, $zero, 141
sw $t0, 564($s0)
lw $t1, 564($s0)
add $t2, $t1, $t0

addi $t0, $zero, 142
sw $t0, 568($s0)
lw $t1, 568($s0)
add $t2, $t1, $t0

addi $t0, $zero, 143
sw $t0, 572($s0)
lw $t1, 572($s0)
add $t2, $t1, $t0

addi $t0, $zero, 144
sw $t0, 576($s0)
lw $t1, 576($s0)
add $t2, $t1, $t0

addi $t0, $zero, 145
sw $t0, 580($s0)
lw $t1, 580($s0)
add $t2, $t1, $t0

addi $t0, $zero, 146
sw $t0, 584($s0)
lw $t1, 584($s0)
add $t2, $t1, $t0

addi $t0, $zero, 147
sw $t0, 588($s0)
lw $t1, 588($s0)
add $t2, $t1, $t0

addi $t0, $zero, 148
sw $t0, 592($s0)
lw $t1, 592($s0)
add $t2, $t1, $t0

addi $t0, $zero, 149
sw $t0, 596($s0)
lw $t1, 596($s0)
add $t2, $t1, $t0

addi $t0, $zero, 150
sw $t0, 600($s0)
lw $t1, 600($s0)
add $t2, $t1, $t0

addi $t0, $zero, 151
sw $t0, 604($s0)
lw $t1, 604($s0)
add $t2, $t1, $t0

addi $t0, $zero, 152
sw $t0, 608($s0)
lw $t1, 608($s0)
add $t2, $t1, $t0

addi $t0, $zero, 153
sw $t0, 612($s0)
lw $t1, 612($s0)
add $t2, $t1, $t0

addi $t0, $zero, 154
sw $t0, 616($s0)
lw $t1, 616($s0)
add $t2, $t1, $t0

addi $t0, $zero, 155
sw $t0, 620($s0)
lw $t1, 620($s0)
add $t2, $t1, $t0

addi $t0, $zero, 156
sw $t0, 624($s0)
lw $t1, 624($s0)
add $t2, $t1, $t0

addi $t0, $zero, 157
sw $t0, 628($s0)
lw $t1, 628($s0)
add $t2, $t1, $t0

addi $t0, $zero, 158
sw $t0, 632($s0)
lw $t1, 632($s0)
add $t2, $t1, $t0

addi $t0, $zero, 159
sw $t0, 636($s0)
lw $t1, 636($s0)
add $t2, $t1, $t0

addi $t0, $zero, 160
sw $t0, 640($s0)
lw $t1, 640($s0)
add $t2, $t1, $t0

addi $t0, $zero, 161
sw $t0, 644($s0)
lw $t1, 644($s0)
add $t2, $t1, $t0

addi $t0, $zero, 162
sw $t0, 648($s0)
lw $t1, 648($s0)
add $t2, $t1, $t0

addi $t0, $zero, 163
sw $t0, 652($s0)
lw $t1, 652($s0)
add $t2, $t1, $t0

addi $t0, $zero, 164
sw $t0, 656($s0)
lw $t1, 656($s0)
add $t2, $t1, $t0

addi $t0, $zero, 165
sw $t0, 660($s0)
lw $t1, 660($s0)
add $t2, $t1, $t0

addi $t0, $zero, 166
sw $t0, 664($s0)
lw $t1, 664($s0)
add $t2, $t1, $t0

addi $t0, $zero, 167
sw $t0, 668($s0)
lw $t1, 668($s0)
add $t2, $t1, $t0

addi $t0, $zero, 168
sw $t0, 672($s0)
lw $t1, 672($s0)
add $t2, $t1, $t0

addi $t0, $zero, 169
sw $t0, 676($s0)
lw $t1, 676($s0)
add $t2, $t1, $t0

addi $t0, $zero, 170
sw $t0, 680($s0)
lw $t1, 680($s0)
add $t2, $t1, $t0

addi $t0, $zero, 171
sw $t0, 684($s0)
lw $t1, 684($s0)
add $t2, $t1, $t0

addi $t0, $zero, 172
sw $t0, 688($s0)
lw $t1, 688($s0)
add $t2, $t1, $t0

addi $t0, $zero, 173
sw $t0, 692($s0)
lw $t1, 692($s0)
add $t2, $t1, $t0

addi $t0, $zero, 174
sw $t0, 696($s0)
lw $t1, 696($s0)
add $t2, $t1, $t0

addi $t0, $zero, 175
sw $t0, 700($s0)
lw $t1, 700($s0)
add $t2, $t1, $t0

addi $t0, $zero, 176
sw $t0, 704($s0)
lw $t1, 704($s0)
add $t2, $t1, $t0

addi $t0, $zero, 177
sw $t0, 708($s0)
lw $t1, 708($s0)
add $t2, $t1, $t0

addi $t0, $zero, 178
sw $t0, 712($s0)
lw $t1, 712($s0)
add $t2, $t1, $t0

addi $t0, $zero, 179
sw $t0, 716($s0)
lw $t1, 716($s0)
add $t2, $t1, $t0

addi $t0, $zero, 180
sw $t0, 720($s0)
lw $t1, 720($s0)
add $t2, $t1, $t0

addi $t0, $zero, 181
sw $t0, 724($s0)
lw $t1, 724($s0)
add $t2, $t1, $t0

addi $t0, $zero, 182
sw $t0, 728($s0)
lw $t1, 728($s0)
add $t2, $t1, $t0

addi $t0, $zero, 183
sw $t0, 732($s0)
lw $t1, 732($s0)
add $t2, $t1, $t0

addi $t0, $zero, 184
sw $t0, 736($s0)
lw $t1, 736($s0)
add $t2, $t1, $t0

addi $t0, $zero, 185
sw $t0, 740($s0)
lw $t1, 740($s0)
add $t2, $t1, $t0

addi $t0, $zero, 186
sw $t0, 744($s0)
lw $t1, 744($s0)
add $t2, $t1, $t0

addi $t0, $zero, 187
sw $t0, 748($s0)
lw $t1, 748($s0)
add $t2, $t1, $t0

addi $t0, $zero, 188
sw $t0, 752($s0)
lw $t1, 752($s0)
add $t2, $t1, $t0

addi $t0, $zero, 189
sw $t0, 756($s0)
lw $t1, 756($s0)
add $t2, $t1, $t0

addi $t0, $zero, 190
sw $t0, 760($s0)
lw $t1, 760($s0)
add $t2, $t1, $t0

addi $t0, $zero, 191
sw $t0, 764($s0)
lw $t1, 764($s0)
add $t2, $t1, $t0

addi $t0, $zero, 192
sw $t0, 768($s0)
lw $t1, 768($s0)
add $t2, $t1, $t0

addi $t0, $zero, 193
sw $t0, 772($s0)
lw $t1, 772($s0)
add $t2, $t1, $t0

addi $t0, $zero, 194
sw $t0, 776($s0)
lw $t1, 776($s0)
add $t2, $t1, $t0

addi $t0, $zero, 195
sw $t0, 780($s0)
lw $t1, 780($s0)
add $t2, $t1, $t0

addi $t0, $zero, 196
sw $t0, 784($s0)
lw $t1, 784($s0)
add $t2, $t1, $t0

addi $t0, $zero, 197
sw $t0, 788($s0)
lw $t1, 788($s0)
add $t2, $t1, $t0

addi $t0, $zero, 198
sw $t0, 792($s0)
lw $t1, 792($s0)
add $t2, $t1, $t0

addi $t0, $zero, 199
sw $t0, 796($s0)
lw $t1, 796($s0)
add $t2, $t1, $t0

addi $t0, $zero, 200
sw $t0, 800($s0)
lw $t1, 800($s0)
add $t2, $t1, $t0

addi $t0, $zero, 201
sw $t0, 804($s0)
lw $t1, 804($s0)
add $t2, $t1, $t0

addi $t0, $zero, 202
sw $t0, 808($s0)
lw $t1, 808($s0)
add $t2, $t1, $t0

addi $t0, $zero, 203
sw $t0, 812($s0)
lw $t1, 812($s0)
add $t2, $t1, $t0

addi $t0, $zero, 204
sw $t0, 816($s0)
lw $t1, 816($s0)
add $t2, $t1, $t0

addi $t0, $zero, 205
sw $t0, 820($s0)
lw $t1, 820($s0)
add $t2, $t1, $t0

addi $t0, $zero, 206
sw $t0, 824($s0)
lw $t1, 824($s0)
add $t2, $t1, $t0

addi $t0, $zero, 207
sw $t0, 828($s0)
lw $t1, 828($s0)
add $t2, $t1, $t0

addi $t0, $zero, 208
sw $t0, 832($s0)
lw $t1, 832($s0)
add $t2, $t1, $t0

addi $t0, $zero, 209
sw $t0, 836($s0)
lw $t1, 836($s0)
add $t2, $t1, $t0

addi $t0, $zero, 210
sw $t0, 840($s0)
lw $t1, 840($s0)
add $t2, $t1, $t0

addi $t0, $zero, 211
sw $t0, 844($s0)
lw $t1, 844($s0)
add $t2, $t1, $t0

addi $t0, $zero, 212
sw $t0, 848($s0)
lw $t1, 848($s0)
add $t2, $t1, $t0

addi $t0, $zero, 213
sw $t0, 852($s0)
lw $t1, 852($s0)
add $t2, $t1, $t0

addi $t0, $zero, 214
sw $t0, 856($s0)
lw $t1, 856($s0)
add $t2, $t1, $t0

addi $t0, $zero, 215
sw $t0, 860($s0)
lw $t1, 860($s0)
add $t2, $t1, $t0

addi $t0, $zero, 216
sw $t0, 864($s0)
lw $t1, 864($s0)
add $t2, $t1, $t0

addi $t0, $zero, 217
sw $t0, 868($s0)
lw $t1, 868($s0)
add $t2, $t1, $t0

addi $t0, $zero, 218
sw $t0, 872($s0)
lw $t1, 872($s0)
add $t2, $t1, $t0

addi $t0, $zero, 219
sw $t0, 876($s0)
lw $t1, 876($s0)
add $t2, $t1, $t0

addi $t0, $zero, 220
sw $t0, 880($s0)
lw $t1, 880($s0)
add $t2, $t1, $t0

addi $t0, $zero, 221
sw $t0, 884($s0)
lw $t1, 884($s0)
add $t2, $t1, $t0

addi $t0, $zero, 222
sw $t0, 888($s0)
lw $t1, 888($s0)
add $t2, $t1, $t0

addi $t0, $zero, 223
sw $t0, 892($s0)
lw $t1, 892($s0)
add $t2, $t1, $t0

addi $t0, $zero, 224
sw $t0, 896($s0)
lw $t1, 896($s0)
add $t2, $t1, $t0

addi $t0, $zero, 225
sw $t0, 900($s0)
lw $t1, 900($s0)
add $t2, $t1, $t0

addi $t0, $zero, 226
sw $t0, 904($s0)
lw $t1, 904($s0)
add $t2, $t1, $t0

addi $t0, $zero, 227
sw $t0, 908($s0)
lw $t1, 908($s0)
add $t2, $t1, $t0

addi $t0, $zero, 228
sw $t0, 912($s0)
lw $t1, 912($s0)
add $t2, $t1, $t0

addi $t0, $zero, 229
sw $t0, 916($s0)
lw $t1, 916($s0)
add $t2, $t1, $t0

addi $t0, $zero, 230
sw $t0, 920($s0)
lw $t1, 920($s0)
add $t2, $t1, $t0

addi $t0, $zero, 231
sw $t0, 924($s0)
lw $t1, 924($s0)
add $t2, $t1, $t0

addi $t0, $zero, 232
sw $t0, 928($s0)
lw $t1, 928($s0)
add $t2, $t1, $t0

addi $t0, $zero, 233
sw $t0, 932($s0)
lw $t1, 932($s0)
add $t2, $t1, $t0

addi $t0, $zero, 234
sw $t0, 936($s0)
lw $t1, 936($s0)
add $t2, $t1, $t0

addi $t0, $zero, 235
sw $t0, 940($s0)
lw $t1, 940($s0)
add $t2, $t1, $t0

addi $t0, $zero, 236
sw $t0, 944($s0)
lw $t1, 944($s0)
add $t2, $t1, $t0

addi $t0, $zero, 237
sw $t0, 948($s0)
lw $t1, 948($s0)
add $t2, $t1, $t0

addi $t0, $zero, 238
sw $t0, 952($s0)
lw $t1, 952($s0)
add $t2, $t1, $t0

addi $t0, $zero, 239
sw $t0, 956($s0)
lw $t1, 956($s0)
add $t2, $t1, $t0

addi $t0, $zero, 240
sw $t0, 960($s0)
lw $t1, 960($s0)
add $t2, $t1, $t0

addi $t0, $zero, 241
sw $t0, 964($s0)
lw $t1, 964($s0)
add $t2, $t1, $t0

addi $t0, $zero, 242
sw $t0, 968($s0)
lw $t1, 968($s0)
add $t2, $t1, $t0

addi $t0, $zero, 243
sw $t0, 972($s0)
lw $t1, 972($s0)
add $t2, $t1, $t0

addi $t0, $zero, 244
sw $t0, 976($s0)
lw $t1, 976($s0)
add $t2, $t1, $t0

addi $t0, $zero, 245
sw $t0, 980($s0)
lw $t1, 980($s0)
add $t2, $t1, $t0

addi $t0, $zero, 246
sw $t0, 984($s0)
lw $t1, 984($s0)
add $t2, $t1, $t0

addi $t0, $zero, 247
sw $t0, 988($s0)
lw $t1, 988($s0)
add $t2, $t1, $t0

addi $t0, $zero, 248
sw $t0, 992($s0)
lw $t1, 992($s0)
add $t2, $t1, $t0

addi $t0, $zero, 249
sw $t0, 996($s0)
lw $t1, 996($s0)
add $t2, $t1, $t0

addi $t0, $zero, 250
sw $t0, 1000($s0)
lw $t1, 1000($s0)
add $t2, $t1, $t0

addi $t0, $zero, 251
sw $t0, 1004($s0)
lw $t1, 1004($s0)
add $t2, $t1, $t0

addi $t0, $zero, 252
sw $t0, 1008($s0)
lw $t1, 1008($s0)
add $t2, $t1, $t0

addi $t0, $zero, 253
sw $t0, 1012($s0)
lw $t1, 1012($s0)
add $t2, $t1, $t0

addi $t0, $zero, 254
sw $t0, 1016($s0)
lw $t1, 1016($s0)
add $t2, $t1, $t0

addi $t0, $zero, 255
sw $t0, 1020($s0)
lw $t1, 1020($s0)
add $t2, $t1, $t0

addi $t0, $zero, 256
sw $t0, 1024($s0)
lw $t1, 1024($s0)
add $t2, $t1, $t0

addi $t0, $zero, 257
sw $t0, 1028($s0)
lw $t1, 1028($s0)
add $t2, $t1, $t0

addi $t0, $zero, 258
sw $t0, 1032($s0)
lw $t1, 1032($s0)
add $t2, $t1, $t0

addi $t0, $zero, 259
sw $t0, 1036($s0)
lw $t1, 1036($s0)
add $t2, $t1, $t0

addi $t0, $zero, 260
sw $t0, 1040($s0)
lw $t1, 1040($s0)
add $t2, $t1, $t0

addi $t0, $zero, 261
sw $t0, 1044($s0)
lw $t1, 1044($s0)
add $t2, $t1, $t0

addi $t0, $zero, 262
sw $t0, 1048($s0)
lw $t1, 1048($s0)
add $t2, $t1, $t0

addi $t0, $zero, 263
sw $t0, 1052($s0)
lw $t1, 1052($s0)
add $t2, $t1, $t0

addi $t0, $zero, 264
sw $t0, 1056($s0)
lw $t1, 1056($s0)
add $t2, $t1, $t0

addi $t0, $zero, 265
sw $t0, 1060($s0)
lw $t1, 1060($s0)
add $t2, $t1, $t0

addi $t0, $zero, 266
sw $t0, 1064($s0)
lw $t1, 1064($s0)
add $t2, $t1, $t0

addi $t0, $zero, 267
sw $t0, 1068($s0)
lw $t1, 1068($s0)
add $t2, $t1, $t0

addi $t0, $zero, 268
sw $t0, 1072($s0)
lw $t1, 1072($s0)
add $t2, $t1, $t0

addi $t0, $zero, 269
sw $t0, 1076($s0)
lw $t1, 1076($s0)
add $t2, $t1, $t0

addi $t0, $zero, 270
sw $t0, 1080($s0)
lw $t1, 1080($s0)
add $t2, $t1, $t0

addi $t0, $zero, 271
sw $t0, 1084($s0)
lw $t1, 1084($s0)
add $t2, $t1, $t0

addi $t0, $zero, 272
sw $t0, 1088($s0)
lw $t1, 1088($s0)
add $t2, $t1, $t0

addi $t0, $zero, 273
sw $t0, 1092($s0)
lw $t1, 1092($s0)
add $t2, $t1, $t0

addi $t0, $zero, 274
sw $t0, 1096($s0)
lw $t1, 1096($s0)
add $t2, $t1, $t0

addi $t0, $zero, 275
sw $t0, 1100($s0)
lw $t1, 1100($s0)
add $t2, $t1, $t0

addi $t0, $zero, 276
sw $t0, 1104($s0)
lw $t1, 1104($s0)
add $t2, $t1, $t0

addi $t0, $zero, 277
sw $t0, 1108($s0)
lw $t1, 1108($s0)
add $t2, $t1, $t0

addi $t0, $zero, 278
sw $t0, 1112($s0)
lw $t1, 1112($s0)
add $t2, $t1, $t0

addi $t0, $zero, 279
sw $t0, 1116($s0)
lw $t1, 1116($s0)
add $t2, $t1, $t0

addi $t0, $zero, 280
sw $t0, 1120($s0)
lw $t1, 1120($s0)
add $t2, $t1, $t0

addi $t0, $zero, 281
sw $t0, 1124($s0)
lw $t1, 1124($s0)
add $t2, $t1, $t0

addi $t0, $zero, 282
sw $t0, 1128($s0)
lw $t1, 1128($s0)
add $t2, $t1, $t0

addi $t0, $zero, 283
sw $t0, 1132($s0)
lw $t1, 1132($s0)
add $t2, $t1, $t0

addi $t0, $zero, 284
sw $t0, 1136($s0)
lw $t1, 1136($s0)
add $t2, $t1, $t0

addi $t0, $zero, 285
sw $t0, 1140($s0)
lw $t1, 1140($s0)
add $t2, $t1, $t0

addi $t0, $zero, 286
sw $t0, 1144($s0)
lw $t1, 1144($s0)
add $t2, $t1, $t0

addi $t0, $zero, 287
sw $t0, 1148($s0)
lw $t1, 1148($s0)
add $t2, $t1, $t0

addi $t0, $zero, 288
sw $t0, 1152($s0)
lw $t1, 1152($s0)
add $t2, $t1, $t0

addi $t0, $zero, 289
sw $t0, 1156($s0)
lw $t1, 1156($s0)
add $t2, $t1, $t0

addi $t0, $zero, 290
sw $t0, 1160($s0)
lw $t1, 1160($s0)
add $t2, $t1, $t0

addi $t0, $zero, 291
sw $t0, 1164($s0)
lw $t1, 1164($s0)
add $t2, $t1, $t0

addi $t0, $zero, 292
sw $t0, 1168($s0)
lw $t1, 1168($s0)
add $t2, $t1, $t0

addi $t0, $zero, 293
sw $t0, 1172($s0)
lw $t1, 1172($s0)
add $t2, $t1, $t0

addi $t0, $zero, 294
sw $t0, 1176($s0)
lw $t1, 1176($s0)
add $t2, $t1, $t0

addi $t0, $zero, 295
sw $t0, 1180($s0)
lw $t1, 1180($s0)
add $t2, $t1, $t0

addi $t0, $zero, 296
sw $t0, 1184($s0)
lw $t1, 1184($s0)
add $t2, $t1, $t0

addi $t0, $zero, 297
sw $t0, 1188($s0)
lw $t1, 1188($s0)
add $t2, $t1, $t0

addi $t0, $zero, 298
sw $t0, 1192($s0)
lw $t1, 1192($s0)
add $t2, $t1, $t0

addi $t0, $zero, 299
sw $t0, 1196($s0)
lw $t1, 1196($s0)
add $t2, $t1, $t0

addi $t0, $zero, 300
sw $t0, 1200($s0)
lw $t1, 1200($s0)
add $t2, $t1, $t0

addi $t0, $zero, 301
sw $t0, 1204($s0)
lw $t1, 1204($s0)
add $t2, $t1, $t0

addi $t0, $zero, 302
sw $t0, 1208($s0)
lw $t1, 1208($s0)
add $t2, $t1, $t0

addi $t0, $zero, 303
sw $t0, 1212($s0)
lw $t1, 1212($s0)
add $t2, $t1, $t0

addi $t0, $zero, 304
sw $t0, 1216($s0)
lw $t1, 1216($s0)
add $t2, $t1, $t0

addi $t0, $zero, 305
sw $t0, 1220($s0)
lw $t1, 1220($s0)
add $t2, $t1, $t0

addi $t0, $zero, 306
sw $t0, 1224($s0)
lw $t1, 1224($s0)
add $t2, $t1, $t0

addi $t0, $zero, 307
sw $t0, 1228($s0)
lw $t1, 1228($s0)
add $t2, $t1, $t0

addi $t0, $zero, 308
sw $t0, 1232($s0)
lw $t1, 1232($s0)
add $t2, $t1, $t0

addi $t0, $zero, 309
sw $t0, 1236($s0)
lw $t1, 1236($s0)
add $t2, $t1, $t0

addi $t0, $zero, 310
sw $t0, 1240($s0)
lw $t1, 1240($s0)
add $t2, $t1, $t0

addi $t0, $zero, 311
sw $t0, 1244($s0)
lw $t1, 1244($s0)
add $t2, $t1, $t0

addi $t0, $zero, 312
sw $t0, 1248($s0)
lw $t1, 1248($s0)
add $t2, $t1, $t0

addi $t0, $zero, 313
sw $t0, 1252($s0)
lw $t1, 1252($s0)
add $t2, $t1, $t0

addi $t0, $zero, 314
sw $t0, 1256($s0)
lw $t1, 1256($s0)
add $t2, $t1, $t0

addi $t0, $zero, 315
sw $t0, 1260($s0)
lw $t1, 1260($s0)
add $t2, $t1, $t0

addi $t0, $zero, 316
sw $t0, 1264($s0)
lw $t1, 1264($s0)
add $t2, $t1, $t0

addi $t0, $zero, 317
sw $t0, 1268($s0)
lw $t1, 1268($s0)
add $t2, $t1, $t0

addi $t0, $zero, 318
sw $t0, 1272($s0)
lw $t1, 1272($s0)
add $t2, $t1, $t0

addi $t0, $zero, 319
sw $t0, 1276($s0)
lw $t1, 1276($s0)
add $t2, $t1, $t0

addi $t0, $zero, 320
sw $t0, 1280($s0)
lw $t1, 1280($s0)
add $t2, $t1, $t0

addi $t0, $zero, 321
sw $t0, 1284($s0)
lw $t1, 1284($s0)
add $t2, $t1, $t0

addi $t0, $zero, 322
sw $t0, 1288($s0)
lw $t1, 1288($s0)
add $t2, $t1, $t0

addi $t0, $zero, 323
sw $t0, 1292($s0)
lw $t1, 1292($s0)
add $t2, $t1, $t0

addi $t0, $zero, 324
sw $t0, 1296($s0)
lw $t1, 1296($s0)
add $t2, $t1, $t0

addi $t0, $zero, 325
sw $t0, 1300($s0)
lw $t1, 1300($s0)
add $t2, $t1, $t0

addi $t0, $zero, 326
sw $t0, 1304($s0)
lw $t1, 1304($s0)
add $t2, $t1, $t0

addi $t0, $zero, 327
sw $t0, 1308($s0)
lw $t1, 1308($s0)
add $t2, $t1, $t0

addi $t0, $zero, 328
sw $t0, 1312($s0)
lw $t1, 1312($s0)
add $t2, $t1, $t0

addi $t0, $zero, 329
sw $t0, 1316($s0)
lw $t1, 1316($s0)
add $t2, $t1, $t0

addi $t0, $zero, 330
sw $t0, 1320($s0)
lw $t1, 1320($s0)
add $t2, $t1, $t0

addi $t0, $zero, 331
sw $t0, 1324($s0)
lw $t1, 1324($s0)
add $t2, $t1, $t0

addi $t0, $zero, 332
sw $t0, 1328($s0)
lw $t1, 1328($s0)
add $t2, $t1, $t0

addi $t0, $zero, 333
sw $t0, 1332($s0)
lw $t1, 1332($s0)
add $t2, $t1, $t0

addi $t0, $zero, 334
sw $t0, 1336($s0)
lw $t1, 1336($s0)
add $t2, $t1, $t0

addi $t0, $zero, 335
sw $t0, 1340($s0)
lw $t1, 1340($s0)
add $t2, $t1, $t0

addi $t0, $zero, 336
sw $t0, 1344($s0)
lw $t1, 1344($s0)
add $t2, $t1, $t0

addi $t0, $zero, 337
sw $t0, 1348($s0)
lw $t1, 1348($s0)
add $t2, $t1, $t0

addi $t0, $zero, 338
sw $t0, 1352($s0)
lw $t1, 1352($s0)
add $t2, $t1, $t0

addi $t0, $zero, 339
sw $t0, 1356($s0)
lw $t1, 1356($s0)
add $t2, $t1, $t0

addi $t0, $zero, 340
sw $t0, 1360($s0)
lw $t1, 1360($s0)
add $t2, $t1, $t0

addi $t0, $zero, 341
sw $t0, 1364($s0)
lw $t1, 1364($s0)
add $t2, $t1, $t0

addi $t0, $zero, 342
sw $t0, 1368($s0)
lw $t1, 1368($s0)
add $t2, $t1, $t0

addi $t0, $zero, 343
sw $t0, 1372($s0)
lw $t1, 1372($s0)
add $t2, $t1, $t0

addi $t0, $zero, 344
sw $t0, 1376($s0)
lw $t1, 1376($s0)
add $t2, $t1, $t0

addi $t0, $zero, 345
sw $t0, 1380($s0)
lw $t1, 1380($s0)
add $t2, $t1, $t0

addi $t0, $zero, 346
sw $t0, 1384($s0)
lw $t1, 1384($s0)
add $t2, $t1, $t0

addi $t0, $zero, 347
sw $t0, 1388($s0)
lw $t1, 1388($s0)
add $t2, $t1, $t0

addi $t0, $zero, 348
sw $t0, 1392($s0)
lw $t1, 1392($s0)
add $t2, $t1, $t0

addi $t0, $zero, 349
sw $t0, 1396($s0)
lw $t1, 1396($s0)
add $t2, $t1, $t0

addi $t0, $zero, 350
sw $t0, 1400($s0)
lw $t1, 1400($s0)
add $t2, $t1, $t0

addi $t0, $zero, 351
sw $t0, 1404($s0)
lw $t1, 1404($s0)
add $t2, $t1, $t0

addi $t0, $zero, 352
sw $t0, 1408($s0)
lw $t1, 1408($s0)
add $t2, $t1, $t0

addi $t0, $zero, 353
sw $t0, 1412($s0)
lw $t1, 1412($s0)
add $t2, $t1, $t0

addi $t0, $zero, 354
sw $t0, 1416($s0)
lw $t1, 1416($s0)
add $t2, $t1, $t0

addi $t0, $zero, 355
sw $t0, 1420($s0)
lw $t1, 1420($s0)
add $t2, $t1, $t0

addi $t0, $zero, 356
sw $t0, 1424($s0)
lw $t1, 1424($s0)
add $t2, $t1, $t0

addi $t0, $zero, 357
sw $t0, 1428($s0)
lw $t1, 1428($s0)
add $t2, $t1, $t0

addi $t0, $zero, 358
sw $t0, 1432($s0)
lw $t1, 1432($s0)
add $t2, $t1, $t0

addi $t0, $zero, 359
sw $t0, 1436($s0)
lw $t1, 1436($s0)
add $t2, $t1, $t0

addi $t0, $zero, 360
sw $t0, 1440($s0)
lw $t1, 1440($s0)
add $t2, $t1, $t0

addi $t0, $zero, 361
sw $t0, 1444($s0)
lw $t1, 1444($s0)
add $t2, $t1, $t0

addi $t0, $zero, 362
sw $t0, 1448($s0)
lw $t1, 1448($s0)
add $t2, $t1, $t0

addi $t0, $zero, 363
sw $t0, 1452($s0)
lw $t1, 1452($s0)
add $t2, $t1, $t0

addi $t0, $zero, 364
sw $t0, 1456($s0)
lw $t1, 1456($s0)
add $t2, $t1, $t0

addi $t0, $zero, 365
sw $t0, 1460($s0)
lw $t1, 1460($s0)
add $t2, $t1, $t0

addi $t0, $zero, 366
sw $t0, 1464($s0)
lw $t1, 1464($s0)
add $t2, $t1, $t0

addi $t0, $zero, 367
sw $t0, 1468($s0)
lw $t1, 1468($s0)
add $t2, $t1, $t0

addi $t0, $zero, 368
sw $t0, 1472($s0)
lw $t1, 1472($s0)
add $t2, $t1, $t0

addi $t0, $zero, 369
sw $t0, 1476($s0)
lw $t1, 1476($s0)
add $t2, $t1, $t0

addi $t0, $zero, 370
sw $t0, 1480($s0)
lw $t1, 1480($s0)
add $t2, $t1, $t0

addi $t0, $zero, 371
sw $t0, 1484($s0)
lw $t1, 1484($s0)
add $t2, $t1, $t0

addi $t0, $zero, 372
sw $t0, 1488($s0)
lw $t1, 1488($s0)
add $t2, $t1, $t0

addi $t0, $zero, 373
sw $t0, 1492($s0)
lw $t1, 1492($s0)
add $t2, $t1, $t0

addi $t0, $zero, 374
sw $t0, 1496($s0)
lw $t1, 1496($s0)
add $t2, $t1, $t0

addi $t0, $zero, 375
sw $t0, 1500($s0)
lw $t1, 1500($s0)
add $t2, $t1, $t0

addi $t0, $zero, 376
sw $t0, 1504($s0)
lw $t1, 1504($s0)
add $t2, $t1, $t0

addi $t0, $zero, 377
sw $t0, 1508($s0)
lw $t1, 1508($s0)
add $t2, $t1, $t0

addi $t0, $zero, 378
sw $t0, 1512($s0)
lw $t1, 1512($s0)
add $t2, $t1, $t0

addi $t0, $zero, 379
sw $t0, 1516($s0)
lw $t1, 1516($s0)
add $t2, $t1, $t0

addi $t0, $zero, 380
sw $t0, 1520($s0)
lw $t1, 1520($s0)
add $t2, $t1, $t0

addi $t0, $zero, 381
sw $t0, 1524($s0)
lw $t1, 1524($s0)
add $t2, $t1, $t0

addi $t0, $zero, 382
sw $t0, 1528($s0)
lw $t1, 1528($s0)
add $t2, $t1, $t0

addi $t0, $zero, 383
sw $t0, 1532($s0)
lw $t1, 1532($s0)
add $t2, $t1, $t0

addi $t0, $zero, 384
sw $t0, 1536($s0)
lw $t1, 1536($s0)
add $t2, $t1, $t0

addi $t0, $zero, 385
sw $t0, 1540($s0)
lw $t1, 1540($s0)
add $t2, $t1, $t0

addi $t0, $zero, 386
sw $t0, 1544($s0)
lw $t1, 1544($s0)
add $t2, $t1, $t0

addi $t0, $zero, 387
sw $t0, 1548($s0)
lw $t1, 1548($s0)
add $t2, $t1, $t0

addi $t0, $zero, 388
sw $t0, 1552($s0)
lw $t1, 1552($s0)
add $t2, $t1, $t0

addi $t0, $zero, 389
sw $t0, 1556($s0)
lw $t1, 1556($s0)
add $t2, $t1, $t0

addi $t0, $zero, 390
sw $t0, 1560($s0)
lw $t1, 1560($s0)
add $t2, $t1, $t0

addi $t0, $zero, 391
sw $t0, 1564($s0)
lw $t1, 1564($s0)
add $t2, $t1, $t0

addi $t0, $zero, 392
sw $t0, 1568($s0)
lw $t1, 1568($s0)
add $t2, $t1, $t0

addi $t0, $zero, 393
sw $t0, 1572($s0)
lw $t1, 1572($s0)
add $t2, $t1, $t0

addi $t0, $zero, 394
sw $t0, 1576($s0)
lw $t1, 1576($s0)
add $t2, $t1, $t0

addi $t0, $zero, 395
sw $t0, 1580($s0)
lw $t1, 1580($s0)
add $t2, $t1, $t0

addi $t0, $zero, 396
sw $t0, 1584($s0)
lw $t1, 1584($s0)
add $t2, $t1, $t0

addi $t0, $zero, 397
sw $t0, 1588($s0)
lw $t1, 1588($s0)
add $t2, $t1, $t0

addi $t0, $zero, 398
sw $t0, 1592($s0)
lw $t1, 1592($s0)
add $t2, $t1, $t0

addi $t0, $zero, 399
sw $t0, 1596($s0)
lw $t1, 1596($s0)
add $t2, $t1, $t0

addi $t0, $zero, 400
sw $t0, 1600($s0)
lw $t1, 1600($s0)
add $t2, $t1, $t0

addi $t0, $zero, 401
sw $t0, 1604($s0)
lw $t1, 1604($s0)
add $t2, $t1, $t0

addi $t0, $zero, 402
sw $t0, 1608($s0)
lw $t1, 1608($s0)
add $t2, $t1, $t0

addi $t0, $zero, 403
sw $t0, 1612($s0)
lw $t1, 1612($s0)
add $t2, $t1, $t0

addi $t0, $zero, 404
sw $t0, 1616($s0)
lw $t1, 1616($s0)
add $t2, $t1, $t0

addi $t0, $zero, 405
sw $t0, 1620($s0)
lw $t1, 1620($s0)
add $t2, $t1, $t0

addi $t0, $zero, 406
sw $t0, 1624($s0)
lw $t1, 1624($s0)
add $t2, $t1, $t0

addi $t0, $zero, 407
sw $t0, 1628($s0)
lw $t1, 1628($s0)
add $t2, $t1, $t0

addi $t0, $zero, 408
sw $t0, 1632($s0)
lw $t1, 1632($s0)
add $t2, $t1, $t0

addi $t0, $zero, 409
sw $t0, 1636($s0)
lw $t1, 1636($s0)
add $t2, $t1, $t0

addi $t0, $zero, 410
sw $t0, 1640($s0)
lw $t1, 1640($s0)
add $t2, $t1, $t0

addi $t0, $zero, 411
sw $t0, 1644($s0)
lw $t1, 1644($s0)
add $t2, $t1, $t0

addi $t0, $zero, 412
sw $t0, 1648($s0)
lw $t1, 1648($s0)
add $t2, $t1, $t0

addi $t0, $zero, 413
sw $t0, 1652($s0)
lw $t1, 1652($s0)
add $t2, $t1, $t0

addi $t0, $zero, 414
sw $t0, 1656($s0)
lw $t1, 1656($s0)
add $t2, $t1, $t0

addi $t0, $zero, 415
sw $t0, 1660($s0)
lw $t1, 1660($s0)
add $t2, $t1, $t0

addi $t0, $zero, 416
sw $t0, 1664($s0)
lw $t1, 1664($s0)
add $t2, $t1, $t0

addi $t0, $zero, 417
sw $t0, 1668($s0)
lw $t1, 1668($s0)
add $t2, $t1, $t0

addi $t0, $zero, 418
sw $t0, 1672($s0)
lw $t1, 1672($s0)
add $t2, $t1, $t0

addi $t0, $zero, 419
sw $t0, 1676($s0)
lw $t1, 1676($s0)
add $t2, $t1, $t0

addi $t0, $zero, 420
sw $t0, 1680($s0)
lw $t1, 1680($s0)
add $t2, $t1, $t0

addi $t0, $zero, 421
sw $t0, 1684($s0)
lw $t1, 1684($s0)
add $t2, $t1, $t0

addi $t0, $zero, 422
sw $t0, 1688($s0)
lw $t1, 1688($s0)
add $t2, $t1, $t0

addi $t0, $zero, 423
sw $t0, 1692($s0)
lw $t1, 1692($s0)
add $t2, $t1, $t0

addi $t0, $zero, 424
sw $t0, 1696($s0)
lw $t1, 1696($s0)
add $t2, $t1, $t0

addi $t0, $zero, 425
sw $t0, 1700($s0)
lw $t1, 1700($s0)
add $t2, $t1, $t0

addi $t0, $zero, 426
sw $t0, 1704($s0)
lw $t1, 1704($s0)
add $t2, $t1, $t0

addi $t0, $zero, 427
sw $t0, 1708($s0)
lw $t1, 1708($s0)
add $t2, $t1, $t0

addi $t0, $zero, 428
sw $t0, 1712($s0)
lw $t1, 1712($s0)
add $t2, $t1, $t0

addi $t0, $zero, 429
sw $t0, 1716($s0)
lw $t1, 1716($s0)
add $t2, $t1, $t0

addi $t0, $zero, 430
sw $t0, 1720($s0)
lw $t1, 1720($s0)
add $t2, $t1, $t0

addi $t0, $zero, 431
sw $t0, 1724($s0)
lw $t1, 1724($s0)
add $t2, $t1, $t0

addi $t0, $zero, 432
sw $t0, 1728($s0)
lw $t1, 1728($s0)
add $t2, $t1, $t0

addi $t0, $zero, 433
sw $t0, 1732($s0)
lw $t1, 1732($s0)
add $t2, $t1, $t0

addi $t0, $zero, 434
sw $t0, 1736($s0)
lw $t1, 1736($s0)
add $t2, $t1, $t0

addi $t0, $zero, 435
sw $t0, 1740($s0)
lw $t1, 1740($s0)
add $t2, $t1, $t0

addi $t0, $zero, 436
sw $t0, 1744($s0)
lw $t1, 1744($s0)
add $t2, $t1, $t0

addi $t0, $zero, 437
sw $t0, 1748($s0)
lw $t1, 1748($s0)
add $t2, $t1, $t0

addi $t0, $zero, 438
sw $t0, 1752($s0)
lw $t1, 1752($s0)
add $t2, $t1, $t0

addi $t0, $zero, 439
sw $t0, 1756($s0)
lw $t1, 1756($s0)
add $t2, $t1, $t0

addi $t0, $zero, 440
sw $t0, 1760($s0)
lw $t1, 1760($s0)
add $t2, $t1, $t0

addi $t0, $zero, 441
sw $t0, 1764($s0)
lw $t1, 1764($s0)
add $t2, $t1, $t0

addi $t0, $zero, 442
sw $t0, 1768($s0)
lw $t1, 1768($s0)
add $t2, $t1, $t0

addi $t0, $zero, 443
sw $t0, 1772($s0)
lw $t1, 1772($s0)
add $t2, $t1, $t0

addi $t0, $zero, 444
sw $t0, 1776($s0)
lw $t1, 1776($s0)
add $t2, $t1, $t0

addi $t0, $zero, 445
sw $t0, 1780($s0)
lw $t1, 1780($s0)
add $t2, $t1, $t0

addi $t0, $zero, 446
sw $t0, 1784($s0)
lw $t1, 1784($s0)
add $t2, $t1, $t0

addi $t0, $zero, 447
sw $t0, 1788($s0)
lw $t1, 1788($s0)
add $t2, $t1, $t0

addi $t0, $zero, 448
sw $t0, 1792($s0)
lw $t1, 1792($s0)
add $t2, $t1, $t0

addi $t0, $zero, 449
sw $t0, 1796($s0)
lw $t1, 1796($s0)
add $t2, $t1, $t0

addi $t0, $zero, 450
sw $t0, 1800($s0)
lw $t1, 1800($s0)
add $t2, $t1, $t0

addi $t0, $zero, 451
sw $t0, 1804($s0)
lw $t1, 1804($s0)
add $t2, $t1, $t0

addi $t0, $zero, 452
sw $t0, 1808($s0)
lw $t1, 1808($s0)
add $t2, $t1, $t0

addi $t0, $zero, 453
sw $t0, 1812($s0)
lw $t1, 1812($s0)
add $t2, $t1, $t0

addi $t0, $zero, 454
sw $t0, 1816($s0)
lw $t1, 1816($s0)
add $t2, $t1, $t0

addi $t0, $zero, 455
sw $t0, 1820($s0)
lw $t1, 1820($s0)
add $t2, $t1, $t0

addi $t0, $zero, 456
sw $t0, 1824($s0)
lw $t1, 1824($s0)
add $t2, $t1, $t0

addi $t0, $zero, 457
sw $t0, 1828($s0)
lw $t1, 1828($s0)
add $t2, $t1, $t0

addi $t0, $zero, 458
sw $t0, 1832($s0)
lw $t1, 1832($s0)
add $t2, $t1, $t0

addi $t0, $zero, 459
sw $t0, 1836($s0)
lw $t1, 1836($s0)
add $t2, $t1, $t0

addi $t0, $zero, 460
sw $t0, 1840($s0)
lw $t1, 1840($s0)
add $t2, $t1, $t0

addi $t0, $zero, 461
sw $t0, 1844($s0)
lw $t1, 1844($s0)
add $t2, $t1, $t0

addi $t0, $zero, 462
sw $t0, 1848($s0)
lw $t1, 1848($s0)
add $t2, $t1, $t0

addi $t0, $zero, 463
sw $t0, 1852($s0)
lw $t1, 1852($s0)
add $t2, $t1, $t0

addi $t0, $zero, 464
sw $t0, 1856($s0)
lw $t1, 1856($s0)
add $t2, $t1, $t0

addi $t0, $zero, 465
sw $t0, 1860($s0)
lw $t1, 1860($s0)
add $t2, $t1, $t0

addi $t0, $zero, 466
sw $t0, 1864($s0)
lw $t1, 1864($s0)
add $t2, $t1, $t0

addi $t0, $zero, 467
sw $t0, 1868($s0)
lw $t1, 1868($s0)
add $t2, $t1, $t0

addi $t0, $zero, 468
sw $t0, 1872($s0)
lw $t1, 1872($s0)
add $t2, $t1, $t0

addi $t0, $zero, 469
sw $t0, 1876($s0)
lw $t1, 1876($s0)
add $t2, $t1, $t0

addi $t0, $zero, 470
sw $t0, 1880($s0)
lw $t1, 1880($s0)
add $t2, $t1, $t0

addi $t0, $zero, 471
sw $t0, 1884($s0)
lw $t1, 1884($s0)
add $t2, $t1, $t0

addi $t0, $zero, 472
sw $t0, 1888($s0)
lw $t1, 1888($s0)
add $t2, $t1, $t0

addi $t0, $zero, 473
sw $t0, 1892($s0)
lw $t1, 1892($s0)
add $t2, $t1, $t0

addi $t0, $zero, 474
sw $t0, 1896($s0)
lw $t1, 1896($s0)
add $t2, $t1, $t0

addi $t0, $zero, 475
sw $t0, 1900($s0)
lw $t1, 1900($s0)
add $t2, $t1, $t0

addi $t0, $zero, 476
sw $t0, 1904($s0)
lw $t1, 1904($s0)
add $t2, $t1, $t0

addi $t0, $zero, 477
sw $t0, 1908($s0)
lw $t1, 1908($s0)
add $t2, $t1, $t0

addi $t0, $zero, 478
sw $t0, 1912($s0)
lw $t1, 1912($s0)
add $t2, $t1, $t0

addi $t0, $zero, 479
sw $t0, 1916($s0)
lw $t1, 1916($s0)
add $t2, $t1, $t0

addi $t0, $zero, 480
sw $t0, 1920($s0)
lw $t1, 1920($s0)
add $t2, $t1, $t0

addi $t0, $zero, 481
sw $t0, 1924($s0)
lw $t1, 1924($s0)
add $t2, $t1, $t0

addi $t0, $zero, 482
sw $t0, 1928($s0)
lw $t1, 1928($s0)
add $t2, $t1, $t0

addi $t0, $zero, 483
sw $t0, 1932($s0)
lw $t1, 1932($s0)
add $t2, $t1, $t0

addi $t0, $zero, 484
sw $t0, 1936($s0)
lw $t1, 1936($s0)
add $t2, $t1, $t0

addi $t0, $zero, 485
sw $t0, 1940($s0)
lw $t1, 1940($s0)
add $t2, $t1, $t0

addi $t0, $zero, 486
sw $t0, 1944($s0)
lw $t1, 1944($s0)
add $t2, $t1, $t0

addi $t0, $zero, 487
sw $t0, 1948($s0)
lw $t1, 1948($s0)
add $t2, $t1, $t0

addi $t0, $zero, 488
sw $t0, 1952($s0)
lw $t1, 1952($s0)
add $t2, $t1, $t0

addi $t0, $zero, 489
sw $t0, 1956($s0)
lw $t1, 1956($s0)
add $t2, $t1, $t0

addi $t0, $zero, 490
sw $t0, 1960($s0)
lw $t1, 1960($s0)
add $t2, $t1, $t0

addi $t0, $zero, 491
sw $t0, 1964($s0)
lw $t1, 1964($s0)
add $t2, $t1, $t0

addi $t0, $zero, 492
sw $t0, 1968($s0)
lw $t1, 1968($s0)
add $t2, $t1, $t0

addi $t0, $zero, 493
sw $t0, 1972($s0)
lw $t1, 1972($s0)
add $t2, $t1, $t0

addi $t0, $zero, 494
sw $t0, 1976($s0)
lw $t1, 1976($s0)
add $t2, $t1, $t0

addi $t0, $zero, 495
sw $t0, 1980($s0)
lw $t1, 1980($s0)
add $t2, $t1, $t0

addi $t0, $zero, 496
sw $t0, 1984($s0)
lw $t1, 1984($s0)
add $t2, $t1, $t0

addi $t0, $zero, 497
sw $t0, 1988($s0)
lw $t1, 1988($s0)
add $t2, $t1, $t0

addi $t0, $zero, 498
sw $t0, 1992($s0)
lw $t1, 1992($s0)
add $t2, $t1, $t0

addi $t0, $zero, 499
sw $t0, 1996($s0)
lw $t1, 1996($s0)
add $t2, $t1, $t0

addi $t0, $zero, 500
sw $t0, 2000($s0)
lw $t1, 2000($s0)
add $t2, $t1, $t0

addi $t0, $zero, 501
sw $t0, 2004($s0)
lw $t1, 2004($s0)
add $t2, $t1, $t0

addi $t0, $zero, 502
sw $t0, 2008($s0)
lw $t1, 2008($s0)
add $t2, $t1, $t0

addi $t0, $zero, 503
sw $t0, 2012($s0)
lw $t1, 2012($s0)
add $t2, $t1, $t0

addi $t0, $zero, 504
sw $t0, 2016($s0)
lw $t1, 2016($s0)
add $t2, $t1, $t0

addi $t0, $zero, 505
sw $t0, 2020($s0)
lw $t1, 2020($s0)
add $t2, $t1, $t0

addi $t0, $zero, 506
sw $t0, 2024($s0)
lw $t1, 2024($s0)
add $t2, $t1, $t0

addi $t0, $zero, 507
sw $t0, 2028($s0)
lw $t1, 2028($s0)
add $t2, $t1, $t0

addi $t0, $zero, 508
sw $t0, 2032($s0)
lw $t1, 2032($s0)
add $t2, $t1, $t0

addi $t0, $zero, 509
sw $t0, 2036($s0)
lw $t1, 2036($s0)
add $t2, $t1, $t0

addi $t0, $zero, 510
sw $t0, 2040($s0)
lw $t1, 2040($s0)
add $t2, $t1, $t0

addi $t0, $zero, 511
sw $t0, 2044($s0)
lw $t1, 2044($s0)
add $t2, $t1, $t0

addi $t0, $zero, 512
sw $t0, 2048($s0)
lw $t1, 2048($s0)
add $t2, $t1, $t0

addi $t0, $zero, 513
sw $t0, 2052($s0)
lw $t1, 2052($s0)
add $t2, $t1, $t0

addi $t0, $zero, 514
sw $t0, 2056($s0)
lw $t1, 2056($s0)
add $t2, $t1, $t0

addi $t0, $zero, 515
sw $t0, 2060($s0)
lw $t1, 2060($s0)
add $t2, $t1, $t0

addi $t0, $zero, 516
sw $t0, 2064($s0)
lw $t1, 2064($s0)
add $t2, $t1, $t0

addi $t0, $zero, 517
sw $t0, 2068($s0)
lw $t1, 2068($s0)
add $t2, $t1, $t0

addi $t0, $zero, 518
sw $t0, 2072($s0)
lw $t1, 2072($s0)
add $t2, $t1, $t0

addi $t0, $zero, 519
sw $t0, 2076($s0)
lw $t1, 2076($s0)
add $t2, $t1, $t0

addi $t0, $zero, 520
sw $t0, 2080($s0)
lw $t1, 2080($s0)
add $t2, $t1, $t0

addi $t0, $zero, 521
sw $t0, 2084($s0)
lw $t1, 2084($s0)
add $t2, $t1, $t0

addi $t0, $zero, 522
sw $t0, 2088($s0)
lw $t1, 2088($s0)
add $t2, $t1, $t0

addi $t0, $zero, 523
sw $t0, 2092($s0)
lw $t1, 2092($s0)
add $t2, $t1, $t0

addi $t0, $zero, 524
sw $t0, 2096($s0)
lw $t1, 2096($s0)
add $t2, $t1, $t0

addi $t0, $zero, 525
sw $t0, 2100($s0)
lw $t1, 2100($s0)
add $t2, $t1, $t0

addi $t0, $zero, 526
sw $t0, 2104($s0)
lw $t1, 2104($s0)
add $t2, $t1, $t0

addi $t0, $zero, 527
sw $t0, 2108($s0)
lw $t1, 2108($s0)
add $t2, $t1, $t0

addi $t0, $zero, 528
sw $t0, 2112($s0)
lw $t1, 2112($s0)
add $t2, $t1, $t0

addi $t0, $zero, 529
sw $t0, 2116($s0)
lw $t1, 2116($s0)
add $t2, $t1, $t0

addi $t0, $zero, 530
sw $t0, 2120($s0)
lw $t1, 2120($s0)
add $t2, $t1, $t0

addi $t0, $zero, 531
sw $t0, 2124($s0)
lw $t1, 2124($s0)
add $t2, $t1, $t0

addi $t0, $zero, 532
sw $t0, 2128($s0)
lw $t1, 2128($s0)
add $t2, $t1, $t0

addi $t0, $zero, 533
sw $t0, 2132($s0)
lw $t1, 2132($s0)
add $t2, $t1, $t0

addi $t0, $zero, 534
sw $t0, 2136($s0)
lw $t1, 2136($s0)
add $t2, $t1, $t0

addi $t0, $zero, 535
sw $t0, 2140($s0)
lw $t1, 2140($s0)
add $t2, $t1, $t0

addi $t0, $zero, 536
sw $t0, 2144($s0)
lw $t1, 2144($s0)
add $t2, $t1, $t0

addi $t0, $zero, 537
sw $t0, 2148($s0)
lw $t1, 2148($s0)
add $t2, $t1, $t0

addi $t0, $zero, 538
sw $t0, 2152($s0)
lw $t1, 2152($s0)
add $t2, $t1, $t0

addi $t0, $zero, 539
sw $t0, 2156($s0)
lw $t1, 2156($s0)
add $t2, $t1, $t0

addi $t0, $zero, 540
sw $t0, 2160($s0)
lw $t1, 2160($s0)
add $t2, $t1, $t0

addi $t0, $zero, 541
sw $t0, 2164($s0)
lw $t1, 2164($s0)
add $t2, $t1, $t0

addi $t0, $zero, 542
sw $t0, 2168($s0)
lw $t1, 2168($s0)
add $t2, $t1, $t0

addi $t0, $zero, 543
sw $t0, 2172($s0)
lw $t1, 2172($s0)
add $t2, $t1, $t0

addi $t0, $zero, 544
sw $t0, 2176($s0)
lw $t1, 2176($s0)
add $t2, $t1, $t0

addi $t0, $zero, 545
sw $t0, 2180($s0)
lw $t1, 2180($s0)
add $t2, $t1, $t0

addi $t0, $zero, 546
sw $t0, 2184($s0)
lw $t1, 2184($s0)
add $t2, $t1, $t0

addi $t0, $zero, 547
sw $t0, 2188($s0)
lw $t1, 2188($s0)
add $t2, $t1, $t0

addi $t0, $zero, 548
sw $t0, 2192($s0)
lw $t1, 2192($s0)
add $t2, $t1, $t0

addi $t0, $zero, 549
sw $t0, 2196($s0)
lw $t1, 2196($s0)
add $t2, $t1, $t0

addi $t0, $zero, 550
sw $t0, 2200($s0)
lw $t1, 2200($s0)
add $t2, $t1, $t0

addi $t0, $zero, 551
sw $t0, 2204($s0)
lw $t1, 2204($s0)
add $t2, $t1, $t0

addi $t0, $zero, 552
sw $t0, 2208($s0)
lw $t1, 2208($s0)
add $t2, $t1, $t0

addi $t0, $zero, 553
sw $t0, 2212($s0)
lw $t1, 2212($s0)
add $t2, $t1, $t0

addi $t0, $zero, 554
sw $t0, 2216($s0)
lw $t1, 2216($s0)
add $t2, $t1, $t0

addi $t0, $zero, 555
sw $t0, 2220($s0)
lw $t1, 2220($s0)
add $t2, $t1, $t0

addi $t0, $zero, 556
sw $t0, 2224($s0)
lw $t1, 2224($s0)
add $t2, $t1, $t0

addi $t0, $zero, 557
sw $t0, 2228($s0)
lw $t1, 2228($s0)
add $t2, $t1, $t0

addi $t0, $zero, 558
sw $t0, 2232($s0)
lw $t1, 2232($s0)
add $t2, $t1, $t0

addi $t0, $zero, 559
sw $t0, 2236($s0)
lw $t1, 2236($s0)
add $t2, $t1, $t0

addi $t0, $zero, 560
sw $t0, 2240($s0)
lw $t1, 2240($s0)
add $t2, $t1, $t0

addi $t0, $zero, 561
sw $t0, 2244($s0)
lw $t1, 2244($s0)
add $t2, $t1, $t0

addi $t0, $zero, 562
sw $t0, 2248($s0)
lw $t1, 2248($s0)
add $t2, $t1, $t0

addi $t0, $zero, 563
sw $t0, 2252($s0)
lw $t1, 2252($s0)
add $t2, $t1, $t0

addi $t0, $zero, 564
sw $t0, 2256($s0)
lw $t1, 2256($s0)
add $t2, $t1, $t0

addi $t0, $zero, 565
sw $t0, 2260($s0)
lw $t1, 2260($s0)
add $t2, $t1, $t0

addi $t0, $zero, 566
sw $t0, 2264($s0)
lw $t1, 2264($s0)
add $t2, $t1, $t0

addi $t0, $zero, 567
sw $t0, 2268($s0)
lw $t1, 2268($s0)
add $t2, $t1, $t0

addi $t0, $zero, 568
sw $t0, 2272($s0)
lw $t1, 2272($s0)
add $t2, $t1, $t0

addi $t0, $zero, 569
sw $t0, 2276($s0)
lw $t1, 2276($s0)
add $t2, $t1, $t0

addi $t0, $zero, 570
sw $t0, 2280($s0)
lw $t1, 2280($s0)
add $t2, $t1, $t0

addi $t0, $zero, 571
sw $t0, 2284($s0)
lw $t1, 2284($s0)
add $t2, $t1, $t0

addi $t0, $zero, 572
sw $t0, 2288($s0)
lw $t1, 2288($s0)
add $t2, $t1, $t0

addi $t0, $zero, 573
sw $t0, 2292($s0)
lw $t1, 2292($s0)
add $t2, $t1, $t0

addi $t0, $zero, 574
sw $t0, 2296($s0)
lw $t1, 2296($s0)
add $t2, $t1, $t0

addi $t0, $zero, 575
sw $t0, 2300($s0)
lw $t1, 2300($s0)
add $t2, $t1, $t0

addi $t0, $zero, 576
sw $t0, 2304($s0)
lw $t1, 2304($s0)
add $t2, $t1, $t0

addi $t0, $zero, 577
sw $t0, 2308($s0)
lw $t1, 2308($s0)
add $t2, $t1, $t0

addi $t0, $zero, 578
sw $t0, 2312($s0)
lw $t1, 2312($s0)
add $t2, $t1, $t0

addi $t0, $zero, 579
sw $t0, 2316($s0)
lw $t1, 2316($s0)
add $t2, $t1, $t0

addi $t0, $zero, 580
sw $t0, 2320($s0)
lw $t1, 2320($s0)
add $t2, $t1, $t0

addi $t0, $zero, 581
sw $t0, 2324($s0)
lw $t1, 2324($s0)
add $t2, $t1, $t0

addi $t0, $zero, 582
sw $t0, 2328($s0)
lw $t1, 2328($s0)
add $t2, $t1, $t0

addi $t0, $zero, 583
sw $t0, 2332($s0)
lw $t1, 2332($s0)
add $t2, $t1, $t0

addi $t0, $zero, 584
sw $t0, 2336($s0)
lw $t1, 2336($s0)
add $t2, $t1, $t0

addi $t0, $zero, 585
sw $t0, 2340($s0)
lw $t1, 2340($s0)
add $t2, $t1, $t0

addi $t0, $zero, 586
sw $t0, 2344($s0)
lw $t1, 2344($s0)
add $t2, $t1, $t0

addi $t0, $zero, 587
sw $t0, 2348($s0)
lw $t1, 2348($s0)
add $t2, $t1, $t0

addi $t0, $zero, 588
sw $t0, 2352($s0)
lw $t1, 2352($s0)
add $t2, $t1, $t0

addi $t0, $zero, 589
sw $t0, 2356($s0)
lw $t1, 2356($s0)
add $t2, $t1, $t0

addi $t0, $zero, 590
sw $t0, 2360($s0)
lw $t1, 2360($s0)
add $t2, $t1, $t0

addi $t0, $zero, 591
sw $t0, 2364($s0)
lw $t1, 2364($s0)
add $t2, $t1, $t0

addi $t0, $zero, 592
sw $t0, 2368($s0)
lw $t1, 2368($s0)
add $t2, $t1, $t0

addi $t0, $zero, 593
sw $t0, 2372($s0)
lw $t1, 2372($s0)
add $t2, $t1, $t0

addi $t0, $zero, 594
sw $t0, 2376($s0)
lw $t1, 2376($s0)
add $t2, $t1, $t0

addi $t0, $zero, 595
sw $t0, 2380($s0)
lw $t1, 2380($s0)
add $t2, $t1, $t0

addi $t0, $zero, 596
sw $t0, 2384($s0)
lw $t1, 2384($s0)
add $t2, $t1, $t0

addi $t0, $zero, 597
sw $t0, 2388($s0)
lw $t1, 2388($s0)
add $t2, $t1, $t0

addi $t0, $zero, 598
sw $t0, 2392($s0)
lw $t1, 2392($s0)
add $t2, $t1, $t0

addi $t0, $zero, 599
sw $t0, 2396($s0)
lw $t1, 2396($s0)
add $t2, $t1, $t0

addi $t0, $zero, 600
sw $t0, 2400($s0)
lw $t1, 2400($s0)
add $t2, $t1, $t0

addi $t0, $zero, 601
sw $t0, 2404($s0)
lw $t1, 2404($s0)
add $t2, $t1, $t0

addi $t0, $zero, 602
sw $t0, 2408($s0)
lw $t1, 2408($s0)
add $t2, $t1, $t0

addi $t0, $zero, 603
sw $t0, 2412($s0)
lw $t1, 2412($s0)
add $t2, $t1, $t0

addi $t0, $zero, 604
sw $t0, 2416($s0)
lw $t1, 2416($s0)
add $t2, $t1, $t0

addi $t0, $zero, 605
sw $t0, 2420($s0)
lw $t1, 2420($s0)
add $t2, $t1, $t0

addi $t0, $zero, 606
sw $t0, 2424($s0)
lw $t1, 2424($s0)
add $t2, $t1, $t0

addi $t0, $zero, 607
sw $t0, 2428($s0)
lw $t1, 2428($s0)
add $t2, $t1, $t0

addi $t0, $zero, 608
sw $t0, 2432($s0)
lw $t1, 2432($s0)
add $t2, $t1, $t0

addi $t0, $zero, 609
sw $t0, 2436($s0)
lw $t1, 2436($s0)
add $t2, $t1, $t0

addi $t0, $zero, 610
sw $t0, 2440($s0)
lw $t1, 2440($s0)
add $t2, $t1, $t0

addi $t0, $zero, 611
sw $t0, 2444($s0)
lw $t1, 2444($s0)
add $t2, $t1, $t0

addi $t0, $zero, 612
sw $t0, 2448($s0)
lw $t1, 2448($s0)
add $t2, $t1, $t0

addi $t0, $zero, 613
sw $t0, 2452($s0)
lw $t1, 2452($s0)
add $t2, $t1, $t0

addi $t0, $zero, 614
sw $t0, 2456($s0)
lw $t1, 2456($s0)
add $t2, $t1, $t0

addi $t0, $zero, 615
sw $t0, 2460($s0)
lw $t1, 2460($s0)
add $t2, $t1, $t0

addi $t0, $zero, 616
sw $t0, 2464($s0)
lw $t1, 2464($s0)
add $t2, $t1, $t0

addi $t0, $zero, 617
sw $t0, 2468($s0)
lw $t1, 2468($s0)
add $t2, $t1, $t0

addi $t0, $zero, 618
sw $t0, 2472($s0)
lw $t1, 2472($s0)
add $t2, $t1, $t0

addi $t0, $zero, 619
sw $t0, 2476($s0)
lw $t1, 2476($s0)
add $t2, $t1, $t0

addi $t0, $zero, 620
sw $t0, 2480($s0)
lw $t1, 2480($s0)
add $t2, $t1, $t0

addi $t0, $zero, 621
sw $t0, 2484($s0)
lw $t1, 2484($s0)
add $t2, $t1, $t0

addi $t0, $zero, 622
sw $t0, 2488($s0)
lw $t1, 2488($s0)
add $t2, $t1, $t0

addi $t0, $zero, 623
sw $t0, 2492($s0)
lw $t1, 2492($s0)
add $t2, $t1, $t0

addi $t0, $zero, 624
sw $t0, 2496($s0)
lw $t1, 2496($s0)
add $t2, $t1, $t0

addi $t0, $zero, 625
sw $t0, 2500($s0)
lw $t1, 2500($s0)
add $t2, $t1, $t0

addi $t0, $zero, 626
sw $t0, 2504($s0)
lw $t1, 2504($s0)
add $t2, $t1, $t0

addi $t0, $zero, 627
sw $t0, 2508($s0)
lw $t1, 2508($s0)
add $t2, $t1, $t0

addi $t0, $zero, 628
sw $t0, 2512($s0)
lw $t1, 2512($s0)
add $t2, $t1, $t0

addi $t0, $zero, 629
sw $t0, 2516($s0)
lw $t1, 2516($s0)
add $t2, $t1, $t0

addi $t0, $zero, 630
sw $t0, 2520($s0)
lw $t1, 2520($s0)
add $t2, $t1, $t0

addi $t0, $zero, 631
sw $t0, 2524($s0)
lw $t1, 2524($s0)
add $t2, $t1, $t0

addi $t0, $zero, 632
sw $t0, 2528($s0)
lw $t1, 2528($s0)
add $t2, $t1, $t0

addi $t0, $zero, 633
sw $t0, 2532($s0)
lw $t1, 2532($s0)
add $t2, $t1, $t0

addi $t0, $zero, 634
sw $t0, 2536($s0)
lw $t1, 2536($s0)
add $t2, $t1, $t0

addi $t0, $zero, 635
sw $t0, 2540($s0)
lw $t1, 2540($s0)
add $t2, $t1, $t0

addi $t0, $zero, 636
sw $t0, 2544($s0)
lw $t1, 2544($s0)
add $t2, $t1, $t0

addi $t0, $zero, 637
sw $t0, 2548($s0)
lw $t1, 2548($s0)
add $t2, $t1, $t0

addi $t0, $zero, 638
sw $t0, 2552($s0)
lw $t1, 2552($s0)
add $t2, $t1, $t0

addi $t0, $zero, 639
sw $t0, 2556($s0)
lw $t1, 2556($s0)
add $t2, $t1, $t0

addi $t0, $zero, 640
sw $t0, 2560($s0)
lw $t1, 2560($s0)
add $t2, $t1, $t0

addi $t0, $zero, 641
sw $t0, 2564($s0)
lw $t1, 2564($s0)
add $t2, $t1, $t0

addi $t0, $zero, 642
sw $t0, 2568($s0)
lw $t1, 2568($s0)
add $t2, $t1, $t0

addi $t0, $zero, 643
sw $t0, 2572($s0)
lw $t1, 2572($s0)
add $t2, $t1, $t0

addi $t0, $zero, 644
sw $t0, 2576($s0)
lw $t1, 2576($s0)
add $t2, $t1, $t0

addi $t0, $zero, 645
sw $t0, 2580($s0)
lw $t1, 2580($s0)
add $t2, $t1, $t0

addi $t0, $zero, 646
sw $t0, 2584($s0)
lw $t1, 2584($s0)
add $t2, $t1, $t0

addi $t0, $zero, 647
sw $t0, 2588($s0)
lw $t1, 2588($s0)
add $t2, $t1, $t0

addi $t0, $zero, 648
sw $t0, 2592($s0)
lw $t1, 2592($s0)
add $t2, $t1, $t0

addi $t0, $zero, 649
sw $t0, 2596($s0)
lw $t1, 2596($s0)
add $t2, $t1, $t0

addi $t0, $zero, 650
sw $t0, 2600($s0)
lw $t1, 2600($s0)
add $t2, $t1, $t0

addi $t0, $zero, 651
sw $t0, 2604($s0)
lw $t1, 2604($s0)
add $t2, $t1, $t0

addi $t0, $zero, 652
sw $t0, 2608($s0)
lw $t1, 2608($s0)
add $t2, $t1, $t0

addi $t0, $zero, 653
sw $t0, 2612($s0)
lw $t1, 2612($s0)
add $t2, $t1, $t0

addi $t0, $zero, 654
sw $t0, 2616($s0)
lw $t1, 2616($s0)
add $t2, $t1, $t0

addi $t0, $zero, 655
sw $t0, 2620($s0)
lw $t1, 2620($s0)
add $t2, $t1, $t0

addi $t0, $zero, 656
sw $t0, 2624($s0)
lw $t1, 2624($s0)
add $t2, $t1, $t0

addi $t0, $zero, 657
sw $t0, 2628($s0)
lw $t1, 2628($s0)
add $t2, $t1, $t0

addi $t0, $zero, 658
sw $t0, 2632($s0)
lw $t1, 2632($s0)
add $t2, $t1, $t0

addi $t0, $zero, 659
sw $t0, 2636($s0)
lw $t1, 2636($s0)
add $t2, $t1, $t0

addi $t0, $zero, 660
sw $t0, 2640($s0)
lw $t1, 2640($s0)
add $t2, $t1, $t0

addi $t0, $zero, 661
sw $t0, 2644($s0)
lw $t1, 2644($s0)
add $t2, $t1, $t0

addi $t0, $zero, 662
sw $t0, 2648($s0)
lw $t1, 2648($s0)
add $t2, $t1, $t0

addi $t0, $zero, 663
sw $t0, 2652($s0)
lw $t1, 2652($s0)
add $t2, $t1, $t0

addi $t0, $zero, 664
sw $t0, 2656($s0)
lw $t1, 2656($s0)
add $t2, $t1, $t0

addi $t0, $zero, 665
sw $t0, 2660($s0)
lw $t1, 2660($s0)
add $t2, $t1, $t0

addi $t0, $zero, 666
sw $t0, 2664($s0)
lw $t1, 2664($s0)
add $t2, $t1, $t0

addi $t0, $zero, 667
sw $t0, 2668($s0)
lw $t1, 2668($s0)
add $t2, $t1, $t0

addi $t0, $zero, 668
sw $t0, 2672($s0)
lw $t1, 2672($s0)
add $t2, $t1, $t0

addi $t0, $zero, 669
sw $t0, 2676($s0)
lw $t1, 2676($s0)
add $t2, $t1, $t0

addi $t0, $zero, 670
sw $t0, 2680($s0)
lw $t1, 2680($s0)
add $t2, $t1, $t0

addi $t0, $zero, 671
sw $t0, 2684($s0)
lw $t1, 2684($s0)
add $t2, $t1, $t0

addi $t0, $zero, 672
sw $t0, 2688($s0)
lw $t1, 2688($s0)
add $t2, $t1, $t0

addi $t0, $zero, 673
sw $t0, 2692($s0)
lw $t1, 2692($s0)
add $t2, $t1, $t0

addi $t0, $zero, 674
sw $t0, 2696($s0)
lw $t1, 2696($s0)
add $t2, $t1, $t0

addi $t0, $zero, 675
sw $t0, 2700($s0)
lw $t1, 2700($s0)
add $t2, $t1, $t0

addi $t0, $zero, 676
sw $t0, 2704($s0)
lw $t1, 2704($s0)
add $t2, $t1, $t0

addi $t0, $zero, 677
sw $t0, 2708($s0)
lw $t1, 2708($s0)
add $t2, $t1, $t0

addi $t0, $zero, 678
sw $t0, 2712($s0)
lw $t1, 2712($s0)
add $t2, $t1, $t0

addi $t0, $zero, 679
sw $t0, 2716($s0)
lw $t1, 2716($s0)
add $t2, $t1, $t0

addi $t0, $zero, 680
sw $t0, 2720($s0)
lw $t1, 2720($s0)
add $t2, $t1, $t0

addi $t0, $zero, 681
sw $t0, 2724($s0)
lw $t1, 2724($s0)
add $t2, $t1, $t0

addi $t0, $zero, 682
sw $t0, 2728($s0)
lw $t1, 2728($s0)
add $t2, $t1, $t0

addi $t0, $zero, 683
sw $t0, 2732($s0)
lw $t1, 2732($s0)
add $t2, $t1, $t0

addi $t0, $zero, 684
sw $t0, 2736($s0)
lw $t1, 2736($s0)
add $t2, $t1, $t0

addi $t0, $zero, 685
sw $t0, 2740($s0)
lw $t1, 2740($s0)
add $t2, $t1, $t0

addi $t0, $zero, 686
sw $t0, 2744($s0)
lw $t1, 2744($s0)
add $t2, $t1, $t0

addi $t0, $zero, 687
sw $t0, 2748($s0)
lw $t1, 2748($s0)
add $t2, $t1, $t0

addi $t0, $zero, 688
sw $t0, 2752($s0)
lw $t1, 2752($s0)
add $t2, $t1, $t0

addi $t0, $zero, 689
sw $t0, 2756($s0)
lw $t1, 2756($s0)
add $t2, $t1, $t0

addi $t0, $zero, 690
sw $t0, 2760($s0)
lw $t1, 2760($s0)
add $t2, $t1, $t0

addi $t0, $zero, 691
sw $t0, 2764($s0)
lw $t1, 2764($s0)
add $t2, $t1, $t0

addi $t0, $zero, 692
sw $t0, 2768($s0)
lw $t1, 2768($s0)
add $t2, $t1, $t0

addi $t0, $zero, 693
sw $t0, 2772($s0)
lw $t1, 2772($s0)
add $t2, $t1, $t0

addi $t0, $zero, 694
sw $t0, 2776($s0)
lw $t1, 2776($s0)
add $t2, $t1, $t0

addi $t0, $zero, 695
sw $t0, 2780($s0)
lw $t1, 2780($s0)
add $t2, $t1, $t0

addi $t0, $zero, 696
sw $t0, 2784($s0)
lw $t1, 2784($s0)
add $t2, $t1, $t0

addi $t0, $zero, 697
sw $t0, 2788($s0)
lw $t1, 2788($s0)
add $t2, $t1, $t0

addi $t0, $zero, 698
sw $t0, 2792($s0)
lw $t1, 2792($s0)
add $t2, $t1, $t0

addi $t0, $zero, 699
sw $t0, 2796($s0)
lw $t1, 2796($s0)
add $t2, $t1, $t0

addi $t0, $zero, 700
sw $t0, 2800($s0)
lw $t1, 2800($s0)
add $t2, $t1, $t0

addi $t0, $zero, 701
sw $t0, 2804($s0)
lw $t1, 2804($s0)
add $t2, $t1, $t0

addi $t0, $zero, 702
sw $t0, 2808($s0)
lw $t1, 2808($s0)
add $t2, $t1, $t0

addi $t0, $zero, 703
sw $t0, 2812($s0)
lw $t1, 2812($s0)
add $t2, $t1, $t0

addi $t0, $zero, 704
sw $t0, 2816($s0)
lw $t1, 2816($s0)
add $t2, $t1, $t0

addi $t0, $zero, 705
sw $t0, 2820($s0)
lw $t1, 2820($s0)
add $t2, $t1, $t0

addi $t0, $zero, 706
sw $t0, 2824($s0)
lw $t1, 2824($s0)
add $t2, $t1, $t0

addi $t0, $zero, 707
sw $t0, 2828($s0)
lw $t1, 2828($s0)
add $t2, $t1, $t0

addi $t0, $zero, 708
sw $t0, 2832($s0)
lw $t1, 2832($s0)
add $t2, $t1, $t0

addi $t0, $zero, 709
sw $t0, 2836($s0)
lw $t1, 2836($s0)
add $t2, $t1, $t0

addi $t0, $zero, 710
sw $t0, 2840($s0)
lw $t1, 2840($s0)
add $t2, $t1, $t0

addi $t0, $zero, 711
sw $t0, 2844($s0)
lw $t1, 2844($s0)
add $t2, $t1, $t0

addi $t0, $zero, 712
sw $t0, 2848($s0)
lw $t1, 2848($s0)
add $t2, $t1, $t0

addi $t0, $zero, 713
sw $t0, 2852($s0)
lw $t1, 2852($s0)
add $t2, $t1, $t0

addi $t0, $zero, 714
sw $t0, 2856($s0)
lw $t1, 2856($s0)
add $t2, $t1, $t0

addi $t0, $zero, 715
sw $t0, 2860($s0)
lw $t1, 2860($s0)
add $t2, $t1, $t0

addi $t0, $zero, 716
sw $t0, 2864($s0)
lw $t1, 2864($s0)
add $t2, $t1, $t0

addi $t0, $zero, 717
sw $t0, 2868($s0)
lw $t1, 2868($s0)
add $t2, $t1, $t0

addi $t0, $zero, 718
sw $t0, 2872($s0)
lw $t1, 2872($s0)
add $t2, $t1, $t0

addi $t0, $zero, 719
sw $t0, 2876($s0)
lw $t1, 2876($s0)
add $t2, $t1, $t0

addi $t0, $zero, 720
sw $t0, 2880($s0)
lw $t1, 2880($s0)
add $t2, $t1, $t0

addi $t0, $zero, 721
sw $t0, 2884($s0)
lw $t1, 2884($s0)
add $t2, $t1, $t0

addi $t0, $zero, 722
sw $t0, 2888($s0)
lw $t1, 2888($s0)
add $t2, $t1, $t0

addi $t0, $zero, 723
sw $t0, 2892($s0)
lw $t1, 2892($s0)
add $t2, $t1, $t0

addi $t0, $zero, 724
sw $t0, 2896($s0)
lw $t1, 2896($s0)
add $t2, $t1, $t0

addi $t0, $zero, 725
sw $t0, 2900($s0)
lw $t1, 2900($s0)
add $t2, $t1, $t0

addi $t0, $zero, 726
sw $t0, 2904($s0)
lw $t1, 2904($s0)
add $t2, $t1, $t0

addi $t0, $zero, 727
sw $t0, 2908($s0)
lw $t1, 2908($s0)
add $t2, $t1, $t0

addi $t0, $zero, 728
sw $t0, 2912($s0)
lw $t1, 2912($s0)
add $t2, $t1, $t0

addi $t0, $zero, 729
sw $t0, 2916($s0)
lw $t1, 2916($s0)
add $t2, $t1, $t0

addi $t0, $zero, 730
sw $t0, 2920($s0)
lw $t1, 2920($s0)
add $t2, $t1, $t0

addi $t0, $zero, 731
sw $t0, 2924($s0)
lw $t1, 2924($s0)
add $t2, $t1, $t0

addi $t0, $zero, 732
sw $t0, 2928($s0)
lw $t1, 2928($s0)
add $t2, $t1, $t0

addi $t0, $zero, 733
sw $t0, 2932($s0)
lw $t1, 2932($s0)
add $t2, $t1, $t0

addi $t0, $zero, 734
sw $t0, 2936($s0)
lw $t1, 2936($s0)
add $t2, $t1, $t0

addi $t0, $zero, 735
sw $t0, 2940($s0)
lw $t1, 2940($s0)
add $t2, $t1, $t0

addi $t0, $zero, 736
sw $t0, 2944($s0)
lw $t1, 2944($s0)
add $t2, $t1, $t0

addi $t0, $zero, 737
sw $t0, 2948($s0)
lw $t1, 2948($s0)
add $t2, $t1, $t0

addi $t0, $zero, 738
sw $t0, 2952($s0)
lw $t1, 2952($s0)
add $t2, $t1, $t0

addi $t0, $zero, 739
sw $t0, 2956($s0)
lw $t1, 2956($s0)
add $t2, $t1, $t0

addi $t0, $zero, 740
sw $t0, 2960($s0)
lw $t1, 2960($s0)
add $t2, $t1, $t0

addi $t0, $zero, 741
sw $t0, 2964($s0)
lw $t1, 2964($s0)
add $t2, $t1, $t0

addi $t0, $zero, 742
sw $t0, 2968($s0)
lw $t1, 2968($s0)
add $t2, $t1, $t0

addi $t0, $zero, 743
sw $t0, 2972($s0)
lw $t1, 2972($s0)
add $t2, $t1, $t0

addi $t0, $zero, 744
sw $t0, 2976($s0)
lw $t1, 2976($s0)
add $t2, $t1, $t0

addi $t0, $zero, 745
sw $t0, 2980($s0)
lw $t1, 2980($s0)
add $t2, $t1, $t0

addi $t0, $zero, 746
sw $t0, 2984($s0)
lw $t1, 2984($s0)
add $t2, $t1, $t0

addi $t0, $zero, 747
sw $t0, 2988($s0)
lw $t1, 2988($s0)
add $t2, $t1, $t0

addi $t0, $zero, 748
sw $t0, 2992($s0)
lw $t1, 2992($s0)
add $t2, $t1, $t0

addi $t0, $zero, 749
sw $t0, 2996($s0)
lw $t1, 2996($s0)
add $t2, $t1, $t0

addi $t0, $zero, 750
sw $t0, 3000($s0)
lw $t1, 3000($s0)
add $t2, $t1, $t0

addi $t0, $zero, 751
sw $t0, 3004($s0)
lw $t1, 3004($s0)
add $t2, $t1, $t0

addi $t0, $zero, 752
sw $t0, 3008($s0)
lw $t1, 3008($s0)
add $t2, $t1, $t0

addi $t0, $zero, 753
sw $t0, 3012($s0)
lw $t1, 3012($s0)
add $t2, $t1, $t0

addi $t0, $zero, 754
sw $t0, 3016($s0)
lw $t1, 3016($s0)
add $t2, $t1, $t0

addi $t0, $zero, 755
sw $t0, 3020($s0)
lw $t1, 3020($s0)
add $t2, $t1, $t0

addi $t0, $zero, 756
sw $t0, 3024($s0)
lw $t1, 3024($s0)
add $t2, $t1, $t0

addi $t0, $zero, 757
sw $t0, 3028($s0)
lw $t1, 3028($s0)
add $t2, $t1, $t0

addi $t0, $zero, 758
sw $t0, 3032($s0)
lw $t1, 3032($s0)
add $t2, $t1, $t0

addi $t0, $zero, 759
sw $t0, 3036($s0)
lw $t1, 3036($s0)
add $t2, $t1, $t0

addi $t0, $zero, 760
sw $t0, 3040($s0)
lw $t1, 3040($s0)
add $t2, $t1, $t0

addi $t0, $zero, 761
sw $t0, 3044($s0)
lw $t1, 3044($s0)
add $t2, $t1, $t0

addi $t0, $zero, 762
sw $t0, 3048($s0)
lw $t1, 3048($s0)
add $t2, $t1, $t0

addi $t0, $zero, 763
sw $t0, 3052($s0)
lw $t1, 3052($s0)
add $t2, $t1, $t0

addi $t0, $zero, 764
sw $t0, 3056($s0)
lw $t1, 3056($s0)
add $t2, $t1, $t0

addi $t0, $zero, 765
sw $t0, 3060($s0)
lw $t1, 3060($s0)
add $t2, $t1, $t0

addi $t0, $zero, 766
sw $t0, 3064($s0)
lw $t1, 3064($s0)
add $t2, $t1, $t0

addi $t0, $zero, 767
sw $t0, 3068($s0)
lw $t1, 3068($s0)
add $t2, $t1, $t0

addi $t0, $zero, 768
sw $t0, 3072($s0)
lw $t1, 3072($s0)
add $t2, $t1, $t0

addi $t0, $zero, 769
sw $t0, 3076($s0)
lw $t1, 3076($s0)
add $t2, $t1, $t0

addi $t0, $zero, 770
sw $t0, 3080($s0)
lw $t1, 3080($s0)
add $t2, $t1, $t0

addi $t0, $zero, 771
sw $t0, 3084($s0)
lw $t1, 3084($s0)
add $t2, $t1, $t0

addi $t0, $zero, 772
sw $t0, 3088($s0)
lw $t1, 3088($s0)
add $t2, $t1, $t0

addi $t0, $zero, 773
sw $t0, 3092($s0)
lw $t1, 3092($s0)
add $t2, $t1, $t0

addi $t0, $zero, 774
sw $t0, 3096($s0)
lw $t1, 3096($s0)
add $t2, $t1, $t0

addi $t0, $zero, 775
sw $t0, 3100($s0)
lw $t1, 3100($s0)
add $t2, $t1, $t0

addi $t0, $zero, 776
sw $t0, 3104($s0)
lw $t1, 3104($s0)
add $t2, $t1, $t0

addi $t0, $zero, 777
sw $t0, 3108($s0)
lw $t1, 3108($s0)
add $t2, $t1, $t0

addi $t0, $zero, 778
sw $t0, 3112($s0)
lw $t1, 3112($s0)
add $t2, $t1, $t0

addi $t0, $zero, 779
sw $t0, 3116($s0)
lw $t1, 3116($s0)
add $t2, $t1, $t0

addi $t0, $zero, 780
sw $t0, 3120($s0)
lw $t1, 3120($s0)
add $t2, $t1, $t0

addi $t0, $zero, 781
sw $t0, 3124($s0)
lw $t1, 3124($s0)
add $t2, $t1, $t0

addi $t0, $zero, 782
sw $t0, 3128($s0)
lw $t1, 3128($s0)
add $t2, $t1, $t0

addi $t0, $zero, 783
sw $t0, 3132($s0)
lw $t1, 3132($s0)
add $t2, $t1, $t0

addi $t0, $zero, 784
sw $t0, 3136($s0)
lw $t1, 3136($s0)
add $t2, $t1, $t0

addi $t0, $zero, 785
sw $t0, 3140($s0)
lw $t1, 3140($s0)
add $t2, $t1, $t0

addi $t0, $zero, 786
sw $t0, 3144($s0)
lw $t1, 3144($s0)
add $t2, $t1, $t0

addi $t0, $zero, 787
sw $t0, 3148($s0)
lw $t1, 3148($s0)
add $t2, $t1, $t0

addi $t0, $zero, 788
sw $t0, 3152($s0)
lw $t1, 3152($s0)
add $t2, $t1, $t0

addi $t0, $zero, 789
sw $t0, 3156($s0)
lw $t1, 3156($s0)
add $t2, $t1, $t0

addi $t0, $zero, 790
sw $t0, 3160($s0)
lw $t1, 3160($s0)
add $t2, $t1, $t0

addi $t0, $zero, 791
sw $t0, 3164($s0)
lw $t1, 3164($s0)
add $t2, $t1, $t0

addi $t0, $zero, 792
sw $t0, 3168($s0)
lw $t1, 3168($s0)
add $t2, $t1, $t0

addi $t0, $zero, 793
sw $t0, 3172($s0)
lw $t1, 3172($s0)
add $t2, $t1, $t0

addi $t0, $zero, 794
sw $t0, 3176($s0)
lw $t1, 3176($s0)
add $t2, $t1, $t0

addi $t0, $zero, 795
sw $t0, 3180($s0)
lw $t1, 3180($s0)
add $t2, $t1, $t0

addi $t0, $zero, 796
sw $t0, 3184($s0)
lw $t1, 3184($s0)
add $t2, $t1, $t0

addi $t0, $zero, 797
sw $t0, 3188($s0)
lw $t1, 3188($s0)
add $t2, $t1, $t0

addi $t0, $zero, 798
sw $t0, 3192($s0)
lw $t1, 3192($s0)
add $t2, $t1, $t0

addi $t0, $zero, 799
sw $t0, 3196($s0)
lw $t1, 3196($s0)
add $t2, $t1, $t0

addi $t0, $zero, 800
sw $t0, 3200($s0)
lw $t1, 3200($s0)
add $t2, $t1, $t0

addi $t0, $zero, 801
sw $t0, 3204($s0)
lw $t1, 3204($s0)
add $t2, $t1, $t0

addi $t0, $zero, 802
sw $t0, 3208($s0)
lw $t1, 3208($s0)
add $t2, $t1, $t0

addi $t0, $zero, 803
sw $t0, 3212($s0)
lw $t1, 3212($s0)
add $t2, $t1, $t0

addi $t0, $zero, 804
sw $t0, 3216($s0)
lw $t1, 3216($s0)
add $t2, $t1, $t0

addi $t0, $zero, 805
sw $t0, 3220($s0)
lw $t1, 3220($s0)
add $t2, $t1, $t0

addi $t0, $zero, 806
sw $t0, 3224($s0)
lw $t1, 3224($s0)
add $t2, $t1, $t0

addi $t0, $zero, 807
sw $t0, 3228($s0)
lw $t1, 3228($s0)
add $t2, $t1, $t0

addi $t0, $zero, 808
sw $t0, 3232($s0)
lw $t1, 3232($s0)
add $t2, $t1, $t0

addi $t0, $zero, 809
sw $t0, 3236($s0)
lw $t1, 3236($s0)
add $t2, $t1, $t0

addi $t0, $zero, 810
sw $t0, 3240($s0)
lw $t1, 3240($s0)
add $t2, $t1, $t0

addi $t0, $zero, 811
sw $t0, 3244($s0)
lw $t1, 3244($s0)
add $t2, $t1, $t0

addi $t0, $zero, 812
sw $t0, 3248($s0)
lw $t1, 3248($s0)
add $t2, $t1, $t0

addi $t0, $zero, 813
sw $t0, 3252($s0)
lw $t1, 3252($s0)
add $t2, $t1, $t0

addi $t0, $zero, 814
sw $t0, 3256($s0)
lw $t1, 3256($s0)
add $t2, $t1, $t0

addi $t0, $zero, 815
sw $t0, 3260($s0)
lw $t1, 3260($s0)
add $t2, $t1, $t0

addi $t0, $zero, 816
sw $t0, 3264($s0)
lw $t1, 3264($s0)
add $t2, $t1, $t0

addi $t0, $zero, 817
sw $t0, 3268($s0)
lw $t1, 3268($s0)
add $t2, $t1, $t0

addi $t0, $zero, 818
sw $t0, 3272($s0)
lw $t1, 3272($s0)
add $t2, $t1, $t0

addi $t0, $zero, 819
sw $t0, 3276($s0)
lw $t1, 3276($s0)
add $t2, $t1, $t0

addi $t0, $zero, 820
sw $t0, 3280($s0)
lw $t1, 3280($s0)
add $t2, $t1, $t0

addi $t0, $zero, 821
sw $t0, 3284($s0)
lw $t1, 3284($s0)
add $t2, $t1, $t0

addi $t0, $zero, 822
sw $t0, 3288($s0)
lw $t1, 3288($s0)
add $t2, $t1, $t0

addi $t0, $zero, 823
sw $t0, 3292($s0)
lw $t1, 3292($s0)
add $t2, $t1, $t0

addi $t0, $zero, 824
sw $t0, 3296($s0)
lw $t1, 3296($s0)
add $t2, $t1, $t0

addi $t0, $zero, 825
sw $t0, 3300($s0)
lw $t1, 3300($s0)
add $t2, $t1, $t0

addi $t0, $zero, 826
sw $t0, 3304($s0)
lw $t1, 3304($s0)
add $t2, $t1, $t0

addi $t0, $zero, 827
sw $t0, 3308($s0)
lw $t1, 3308($s0)
add $t2, $t1, $t0

addi $t0, $zero, 828
sw $t0, 3312($s0)
lw $t1, 3312($s0)
add $t2, $t1, $t0

addi $t0, $zero, 829
sw $t0, 3316($s0)
lw $t1, 3316($s0)
add $t2, $t1, $t0

addi $t0, $zero, 830
sw $t0, 3320($s0)
lw $t1, 3320($s0)
add $t2, $t1, $t0

addi $t0, $zero, 831
sw $t0, 3324($s0)
lw $t1, 3324($s0)
add $t2, $t1, $t0

addi $t0, $zero, 832
sw $t0, 3328($s0)
lw $t1, 3328($s0)
add $t2, $t1, $t0

addi $t0, $zero, 833
sw $t0, 3332($s0)
lw $t1, 3332($s0)
add $t2, $t1, $t0

addi $t0, $zero, 834
sw $t0, 3336($s0)
lw $t1, 3336($s0)
add $t2, $t1, $t0

addi $t0, $zero, 835
sw $t0, 3340($s0)
lw $t1, 3340($s0)
add $t2, $t1, $t0

addi $t0, $zero, 836
sw $t0, 3344($s0)
lw $t1, 3344($s0)
add $t2, $t1, $t0

addi $t0, $zero, 837
sw $t0, 3348($s0)
lw $t1, 3348($s0)
add $t2, $t1, $t0

addi $t0, $zero, 838
sw $t0, 3352($s0)
lw $t1, 3352($s0)
add $t2, $t1, $t0

addi $t0, $zero, 839
sw $t0, 3356($s0)
lw $t1, 3356($s0)
add $t2, $t1, $t0

addi $t0, $zero, 840
sw $t0, 3360($s0)
lw $t1, 3360($s0)
add $t2, $t1, $t0

addi $t0, $zero, 841
sw $t0, 3364($s0)
lw $t1, 3364($s0)
add $t2, $t1, $t0

addi $t0, $zero, 842
sw $t0, 3368($s0)
lw $t1, 3368($s0)
add $t2, $t1, $t0

addi $t0, $zero, 843
sw $t0, 3372($s0)
lw $t1, 3372($s0)
add $t2, $t1, $t0

addi $t0, $zero, 844
sw $t0, 3376($s0)
lw $t1, 3376($s0)
add $t2, $t1, $t0

addi $t0, $zero, 845
sw $t0, 3380($s0)
lw $t1, 3380($s0)
add $t2, $t1, $t0

addi $t0, $zero, 846
sw $t0, 3384($s0)
lw $t1, 3384($s0)
add $t2, $t1, $t0

addi $t0, $zero, 847
sw $t0, 3388($s0)
lw $t1, 3388($s0)
add $t2, $t1, $t0

addi $t0, $zero, 848
sw $t0, 3392($s0)
lw $t1, 3392($s0)
add $t2, $t1, $t0

addi $t0, $zero, 849
sw $t0, 3396($s0)
lw $t1, 3396($s0)
add $t2, $t1, $t0

addi $t0, $zero, 850
sw $t0, 3400($s0)
lw $t1, 3400($s0)
add $t2, $t1, $t0

addi $t0, $zero, 851
sw $t0, 3404($s0)
lw $t1, 3404($s0)
add $t2, $t1, $t0

addi $t0, $zero, 852
sw $t0, 3408($s0)
lw $t1, 3408($s0)
add $t2, $t1, $t0

addi $t0, $zero, 853
sw $t0, 3412($s0)
lw $t1, 3412($s0)
add $t2, $t1, $t0

addi $t0, $zero, 854
sw $t0, 3416($s0)
lw $t1, 3416($s0)
add $t2, $t1, $t0

addi $t0, $zero, 855
sw $t0, 3420($s0)
lw $t1, 3420($s0)
add $t2, $t1, $t0

addi $t0, $zero, 856
sw $t0, 3424($s0)
lw $t1, 3424($s0)
add $t2, $t1, $t0

addi $t0, $zero, 857
sw $t0, 3428($s0)
lw $t1, 3428($s0)
add $t2, $t1, $t0

addi $t0, $zero, 858
sw $t0, 3432($s0)
lw $t1, 3432($s0)
add $t2, $t1, $t0

addi $t0, $zero, 859
sw $t0, 3436($s0)
lw $t1, 3436($s0)
add $t2, $t1, $t0

addi $t0, $zero, 860
sw $t0, 3440($s0)
lw $t1, 3440($s0)
add $t2, $t1, $t0

addi $t0, $zero, 861
sw $t0, 3444($s0)
lw $t1, 3444($s0)
add $t2, $t1, $t0

addi $t0, $zero, 862
sw $t0, 3448($s0)
lw $t1, 3448($s0)
add $t2, $t1, $t0

addi $t0, $zero, 863
sw $t0, 3452($s0)
lw $t1, 3452($s0)
add $t2, $t1, $t0

addi $t0, $zero, 864
sw $t0, 3456($s0)
lw $t1, 3456($s0)
add $t2, $t1, $t0

addi $t0, $zero, 865
sw $t0, 3460($s0)
lw $t1, 3460($s0)
add $t2, $t1, $t0

addi $t0, $zero, 866
sw $t0, 3464($s0)
lw $t1, 3464($s0)
add $t2, $t1, $t0

addi $t0, $zero, 867
sw $t0, 3468($s0)
lw $t1, 3468($s0)
add $t2, $t1, $t0

addi $t0, $zero, 868
sw $t0, 3472($s0)
lw $t1, 3472($s0)
add $t2, $t1, $t0

addi $t0, $zero, 869
sw $t0, 3476($s0)
lw $t1, 3476($s0)
add $t2, $t1, $t0

addi $t0, $zero, 870
sw $t0, 3480($s0)
lw $t1, 3480($s0)
add $t2, $t1, $t0

addi $t0, $zero, 871
sw $t0, 3484($s0)
lw $t1, 3484($s0)
add $t2, $t1, $t0

addi $t0, $zero, 872
sw $t0, 3488($s0)
lw $t1, 3488($s0)
add $t2, $t1, $t0

addi $t0, $zero, 873
sw $t0, 3492($s0)
lw $t1, 3492($s0)
add $t2, $t1, $t0

addi $t0, $zero, 874
sw $t0, 3496($s0)
lw $t1, 3496($s0)
add $t2, $t1, $t0

addi $t0, $zero, 875
sw $t0, 3500($s0)
lw $t1, 3500($s0)
add $t2, $t1, $t0

addi $t0, $zero, 876
sw $t0, 3504($s0)
lw $t1, 3504($s0)
add $t2, $t1, $t0

addi $t0, $zero, 877
sw $t0, 3508($s0)
lw $t1, 3508($s0)
add $t2, $t1, $t0

addi $t0, $zero, 878
sw $t0, 3512($s0)
lw $t1, 3512($s0)
add $t2, $t1, $t0

addi $t0, $zero, 879
sw $t0, 3516($s0)
lw $t1, 3516($s0)
add $t2, $t1, $t0

addi $t0, $zero, 880
sw $t0, 3520($s0)
lw $t1, 3520($s0)
add $t2, $t1, $t0

addi $t0, $zero, 881
sw $t0, 3524($s0)
lw $t1, 3524($s0)
add $t2, $t1, $t0

addi $t0, $zero, 882
sw $t0, 3528($s0)
lw $t1, 3528($s0)
add $t2, $t1, $t0

addi $t0, $zero, 883
sw $t0, 3532($s0)
lw $t1, 3532($s0)
add $t2, $t1, $t0

addi $t0, $zero, 884
sw $t0, 3536($s0)
lw $t1, 3536($s0)
add $t2, $t1, $t0

addi $t0, $zero, 885
sw $t0, 3540($s0)
lw $t1, 3540($s0)
add $t2, $t1, $t0

addi $t0, $zero, 886
sw $t0, 3544($s0)
lw $t1, 3544($s0)
add $t2, $t1, $t0

addi $t0, $zero, 887
sw $t0, 3548($s0)
lw $t1, 3548($s0)
add $t2, $t1, $t0

addi $t0, $zero, 888
sw $t0, 3552($s0)
lw $t1, 3552($s0)
add $t2, $t1, $t0

addi $t0, $zero, 889
sw $t0, 3556($s0)
lw $t1, 3556($s0)
add $t2, $t1, $t0

addi $t0, $zero, 890
sw $t0, 3560($s0)
lw $t1, 3560($s0)
add $t2, $t1, $t0

addi $t0, $zero, 891
sw $t0, 3564($s0)
lw $t1, 3564($s0)
add $t2, $t1, $t0

addi $t0, $zero, 892
sw $t0, 3568($s0)
lw $t1, 3568($s0)
add $t2, $t1, $t0

addi $t0, $zero, 893
sw $t0, 3572($s0)
lw $t1, 3572($s0)
add $t2, $t1, $t0

addi $t0, $zero, 894
sw $t0, 3576($s0)
lw $t1, 3576($s0)
add $t2, $t1, $t0

addi $t0, $zero, 895
sw $t0, 3580($s0)
lw $t1, 3580($s0)
add $t2, $t1, $t0

addi $t0, $zero, 896
sw $t0, 3584($s0)
lw $t1, 3584($s0)
add $t2, $t1, $t0

addi $t0, $zero, 897
sw $t0, 3588($s0)
lw $t1, 3588($s0)
add $t2, $t1, $t0

addi $t0, $zero, 898
sw $t0, 3592($s0)
lw $t1, 3592($s0)
add $t2, $t1, $t0

addi $t0, $zero, 899
sw $t0, 3596($s0)
lw $t1, 3596($s0)
add $t2, $t1, $t0

addi $t0, $zero, 900
sw $t0, 3600($s0)
lw $t1, 3600($s0)
add $t2, $t1, $t0

addi $t0, $zero, 901
sw $t0, 3604($s0)
lw $t1, 3604($s0)
add $t2, $t1, $t0

addi $t0, $zero, 902
sw $t0, 3608($s0)
lw $t1, 3608($s0)
add $t2, $t1, $t0

addi $t0, $zero, 903
sw $t0, 3612($s0)
lw $t1, 3612($s0)
add $t2, $t1, $t0

addi $t0, $zero, 904
sw $t0, 3616($s0)
lw $t1, 3616($s0)
add $t2, $t1, $t0

addi $t0, $zero, 905
sw $t0, 3620($s0)
lw $t1, 3620($s0)
add $t2, $t1, $t0

addi $t0, $zero, 906
sw $t0, 3624($s0)
lw $t1, 3624($s0)
add $t2, $t1, $t0

addi $t0, $zero, 907
sw $t0, 3628($s0)
lw $t1, 3628($s0)
add $t2, $t1, $t0

addi $t0, $zero, 908
sw $t0, 3632($s0)
lw $t1, 3632($s0)
add $t2, $t1, $t0

addi $t0, $zero, 909
sw $t0, 3636($s0)
lw $t1, 3636($s0)
add $t2, $t1, $t0

addi $t0, $zero, 910
sw $t0, 3640($s0)
lw $t1, 3640($s0)
add $t2, $t1, $t0

addi $t0, $zero, 911
sw $t0, 3644($s0)
lw $t1, 3644($s0)
add $t2, $t1, $t0

addi $t0, $zero, 912
sw $t0, 3648($s0)
lw $t1, 3648($s0)
add $t2, $t1, $t0

addi $t0, $zero, 913
sw $t0, 3652($s0)
lw $t1, 3652($s0)
add $t2, $t1, $t0

addi $t0, $zero, 914
sw $t0, 3656($s0)
lw $t1, 3656($s0)
add $t2, $t1, $t0

addi $t0, $zero, 915
sw $t0, 3660($s0)
lw $t1, 3660($s0)
add $t2, $t1, $t0

addi $t0, $zero, 916
sw $t0, 3664($s0)
lw $t1, 3664($s0)
add $t2, $t1, $t0

addi $t0, $zero, 917
sw $t0, 3668($s0)
lw $t1, 3668($s0)
add $t2, $t1, $t0

addi $t0, $zero, 918
sw $t0, 3672($s0)
lw $t1, 3672($s0)
add $t2, $t1, $t0

addi $t0, $zero, 919
sw $t0, 3676($s0)
lw $t1, 3676($s0)
add $t2, $t1, $t0

addi $t0, $zero, 920
sw $t0, 3680($s0)
lw $t1, 3680($s0)
add $t2, $t1, $t0

addi $t0, $zero, 921
sw $t0, 3684($s0)
lw $t1, 3684($s0)
add $t2, $t1, $t0

addi $t0, $zero, 922
sw $t0, 3688($s0)
lw $t1, 3688($s0)
add $t2, $t1, $t0

addi $t0, $zero, 923
sw $t0, 3692($s0)
lw $t1, 3692($s0)
add $t2, $t1, $t0

addi $t0, $zero, 924
sw $t0, 3696($s0)
lw $t1, 3696($s0)
add $t2, $t1, $t0

addi $t0, $zero, 925
sw $t0, 3700($s0)
lw $t1, 3700($s0)
add $t2, $t1, $t0

addi $t0, $zero, 926
sw $t0, 3704($s0)
lw $t1, 3704($s0)
add $t2, $t1, $t0

addi $t0, $zero, 927
sw $t0, 3708($s0)
lw $t1, 3708($s0)
add $t2, $t1, $t0

addi $t0, $zero, 928
sw $t0, 3712($s0)
lw $t1, 3712($s0)
add $t2, $t1, $t0

addi $t0, $zero, 929
sw $t0, 3716($s0)
lw $t1, 3716($s0)
add $t2, $t1, $t0

addi $t0, $zero, 930
sw $t0, 3720($s0)
lw $t1, 3720($s0)
add $t2, $t1, $t0

addi $t0, $zero, 931
sw $t0, 3724($s0)
lw $t1, 3724($s0)
add $t2, $t1, $t0

addi $t0, $zero, 932
sw $t0, 3728($s0)
lw $t1, 3728($s0)
add $t2, $t1, $t0

addi $t0, $zero, 933
sw $t0, 3732($s0)
lw $t1, 3732($s0)
add $t2, $t1, $t0

addi $t0, $zero, 934
sw $t0, 3736($s0)
lw $t1, 3736($s0)
add $t2, $t1, $t0

addi $t0, $zero, 935
sw $t0, 3740($s0)
lw $t1, 3740($s0)
add $t2, $t1, $t0

addi $t0, $zero, 936
sw $t0, 3744($s0)
lw $t1, 3744($s0)
add $t2, $t1, $t0

addi $t0, $zero, 937
sw $t0, 3748($s0)
lw $t1, 3748($s0)
add $t2, $t1, $t0

addi $t0, $zero, 938
sw $t0, 3752($s0)
lw $t1, 3752($s0)
add $t2, $t1, $t0

addi $t0, $zero, 939
sw $t0, 3756($s0)
lw $t1, 3756($s0)
add $t2, $t1, $t0

addi $t0, $zero, 940
sw $t0, 3760($s0)
lw $t1, 3760($s0)
add $t2, $t1, $t0

addi $t0, $zero, 941
sw $t0, 3764($s0)
lw $t1, 3764($s0)
add $t2, $t1, $t0

addi $t0, $zero, 942
sw $t0, 3768($s0)
lw $t1, 3768($s0)
add $t2, $t1, $t0

addi $t0, $zero, 943
sw $t0, 3772($s0)
lw $t1, 3772($s0)
add $t2, $t1, $t0

addi $t0, $zero, 944
sw $t0, 3776($s0)
lw $t1, 3776($s0)
add $t2, $t1, $t0

addi $t0, $zero, 945
sw $t0, 3780($s0)
lw $t1, 3780($s0)
add $t2, $t1, $t0

addi $t0, $zero, 946
sw $t0, 3784($s0)
lw $t1, 3784($s0)
add $t2, $t1, $t0

addi $t0, $zero, 947
sw $t0, 3788($s0)
lw $t1, 3788($s0)
add $t2, $t1, $t0

addi $t0, $zero, 948
sw $t0, 3792($s0)
lw $t1, 3792($s0)
add $t2, $t1, $t0

addi $t0, $zero, 949
sw $t0, 3796($s0)
lw $t1, 3796($s0)
add $t2, $t1, $t0

addi $t0, $zero, 950
sw $t0, 3800($s0)
lw $t1, 3800($s0)
add $t2, $t1, $t0

addi $t0, $zero, 951
sw $t0, 3804($s0)
lw $t1, 3804($s0)
add $t2, $t1, $t0

addi $t0, $zero, 952
sw $t0, 3808($s0)
lw $t1, 3808($s0)
add $t2, $t1, $t0

addi $t0, $zero, 953
sw $t0, 3812($s0)
lw $t1, 3812($s0)
add $t2, $t1, $t0

addi $t0, $zero, 954
sw $t0, 3816($s0)
lw $t1, 3816($s0)
add $t2, $t1, $t0

addi $t0, $zero, 955
sw $t0, 3820($s0)
lw $t1, 3820($s0)
add $t2, $t1, $t0

addi $t0, $zero, 956
sw $t0, 3824($s0)
lw $t1, 3824($s0)
add $t2, $t1, $t0

addi $t0, $zero, 957
sw $t0, 3828($s0)
lw $t1, 3828($s0)
add $t2, $t1, $t0

addi $t0, $zero, 958
sw $t0, 3832($s0)
lw $t1, 3832($s0)
add $t2, $t1, $t0

addi $t0, $zero, 959
sw $t0, 3836($s0)
lw $t1, 3836($s0)
add $t2, $t1, $t0

addi $t0, $zero, 960
sw $t0, 3840($s0)
lw $t1, 3840($s0)
add $t2, $t1, $t0

addi $t0, $zero, 961
sw $t0, 3844($s0)
lw $t1, 3844($s0)
add $t2, $t1, $t0

addi $t0, $zero, 962
sw $t0, 3848($s0)
lw $t1, 3848($s0)
add $t2, $t1, $t0

addi $t0, $zero, 963
sw $t0, 3852($s0)
lw $t1, 3852($s0)
add $t2, $t1, $t0

addi $t0, $zero, 964
sw $t0, 3856($s0)
lw $t1, 3856($s0)
add $t2, $t1, $t0

addi $t0, $zero, 965
sw $t0, 3860($s0)
lw $t1, 3860($s0)
add $t2, $t1, $t0

addi $t0, $zero, 966
sw $t0, 3864($s0)
lw $t1, 3864($s0)
add $t2, $t1, $t0

addi $t0, $zero, 967
sw $t0, 3868($s0)
lw $t1, 3868($s0)
add $t2, $t1, $t0

addi $t0, $zero, 968
sw $t0, 3872($s0)
lw $t1, 3872($s0)
add $t2, $t1, $t0

addi $t0, $zero, 969
sw $t0, 3876($s0)
lw $t1, 3876($s0)
add $t2, $t1, $t0

addi $t0, $zero, 970
sw $t0, 3880($s0)
lw $t1, 3880($s0)
add $t2, $t1, $t0

addi $t0, $zero, 971
sw $t0, 3884($s0)
lw $t1, 3884($s0)
add $t2, $t1, $t0

addi $t0, $zero, 972
sw $t0, 3888($s0)
lw $t1, 3888($s0)
add $t2, $t1, $t0

addi $t0, $zero, 973
sw $t0, 3892($s0)
lw $t1, 3892($s0)
add $t2, $t1, $t0

addi $t0, $zero, 974
sw $t0, 3896($s0)
lw $t1, 3896($s0)
add $t2, $t1, $t0

addi $t0, $zero, 975
sw $t0, 3900($s0)
lw $t1, 3900($s0)
add $t2, $t1, $t0

addi $t0, $zero, 976
sw $t0, 3904($s0)
lw $t1, 3904($s0)
add $t2, $t1, $t0

addi $t0, $zero, 977
sw $t0, 3908($s0)
lw $t1, 3908($s0)
add $t2, $t1, $t0

addi $t0, $zero, 978
sw $t0, 3912($s0)
lw $t1, 3912($s0)
add $t2, $t1, $t0

addi $t0, $zero, 979
sw $t0, 3916($s0)
lw $t1, 3916($s0)
add $t2, $t1, $t0

addi $t0, $zero, 980
sw $t0, 3920($s0)
lw $t1, 3920($s0)
add $t2, $t1, $t0

addi $t0, $zero, 981
sw $t0, 3924($s0)
lw $t1, 3924($s0)
add $t2, $t1, $t0

addi $t0, $zero, 982
sw $t0, 3928($s0)
lw $t1, 3928($s0)
add $t2, $t1, $t0

addi $t0, $zero, 983
sw $t0, 3932($s0)
lw $t1, 3932($s0)
add $t2, $t1, $t0

addi $t0, $zero, 984
sw $t0, 3936($s0)
lw $t1, 3936($s0)
add $t2, $t1, $t0

addi $t0, $zero, 985
sw $t0, 3940($s0)
lw $t1, 3940($s0)
add $t2, $t1, $t0

addi $t0, $zero, 986
sw $t0, 3944($s0)
lw $t1, 3944($s0)
add $t2, $t1, $t0

addi $t0, $zero, 987
sw $t0, 3948($s0)
lw $t1, 3948($s0)
add $t2, $t1, $t0

addi $t0, $zero, 988
sw $t0, 3952($s0)
lw $t1, 3952($s0)
add $t2, $t1, $t0

addi $t0, $zero, 989
sw $t0, 3956($s0)
lw $t1, 3956($s0)
add $t2, $t1, $t0

addi $t0, $zero, 990
sw $t0, 3960($s0)
lw $t1, 3960($s0)
add $t2, $t1, $t0

addi $t0, $zero, 991
sw $t0, 3964($s0)
lw $t1, 3964($s0)
add $t2, $t1, $t0

addi $t0, $zero, 992
sw $t0, 3968($s0)
lw $t1, 3968($s0)
add $t2, $t1, $t0

addi $t0, $zero, 993
sw $t0, 3972($s0)
lw $t1, 3972($s0)
add $t2, $t1, $t0

addi $t0, $zero, 994
sw $t0, 3976($s0)
lw $t1, 3976($s0)
add $t2, $t1, $t0

addi $t0, $zero, 995
sw $t0, 3980($s0)
lw $t1, 3980($s0)
add $t2, $t1, $t0

addi $t0, $zero, 996
sw $t0, 3984($s0)
lw $t1, 3984($s0)
add $t2, $t1, $t0

addi $t0, $zero, 997
sw $t0, 3988($s0)
lw $t1, 3988($s0)
add $t2, $t1, $t0

addi $t0, $zero, 998
sw $t0, 3992($s0)
lw $t1, 3992($s0)
add $t2, $t1, $t0

addi $t0, $zero, 999
sw $t0, 3996($s0)
lw $t1, 3996($s0)
add $t2, $t1, $t0

li $v0, 10
syscall
