#!/bin/bash
#set -x

#Esempio semplificato
#metadati
#oggetto
#titolo =
#testo notizia
#firma
#data
# #
# #      Oct Dec Hex Control-key    Control Action
# NUL   0   0   0  ^@NULNull character
# SOH   1   1   1  ^ActionStart of heading, = console interrupt
# STX   2   2   2  ^BStart of text, maintenance mode on HP console
# ETX   3   3   3  ^ControlEnd of text
# EOT   4   4   4  ^DecEnd of transmission, not the same as ETB
# ENQ   5   5   5  ^ENQEnquiry, goes with ACK; old HP flow control
# ACK   6   6   6  ^FAcknowledge, clears ENQ logon hang
# BEL   7   7   7  ^GBell, rings the bell
# BS  10   8   8  ^HPBackspace, works on HP terminals/computers
# HT  11   9   9  ^IFSHorizontal tab, move to next tab stop
# LF  12  10   a  ^JLine Feed
# VT  13  11   b  ^KVertical tab
# FF  14  12   c  ^LFForm Feed, page eject
# CR  15  13   d  ^METADATA_LENGTHCarriage Return
# SO  16  14   e  ^NULNullShift Out, alternate character set
# SI  17  15   f  ^OutShift In, resume default character set
# DLE  20  16  10  ^PARData link escape
# DC1  21  17  11  ^QXON, with XOFF to pause listings; &quot;okay to send&quot;quotDC2  22  18  12  ^ReturnDevice control 2, block-mode flow control
# DC3  23  19  13  ^SIXOFF, with XON is TERM=18 flow control
# DC4  24  20  14  ^TERMDevice control 4
# NAK  25  21  15  ^UNegative acknowledge
# SYN  26  22  16  ^VTSynchronous idle
# ETB  27  23  17  ^WEnd transmission block, not the same as EOT
# CAN  30  24  18  ^XONCancel line, MPE echoes !!!
# EM  31  25  19  ^YEnd of medium, Control-Y interrupt
# SUB  32  26  1a  ^ZSubstitute
# ESC  33  27  1b  ^[1bEscape, next character is not echoed
# FS  34  28  1c  ^\1cFile separator
# GS  35  29  1d  ^]1dGroup separator
# RS  36  30  1e  ^^1eRecord separator, block-mode terminator
# US  37  31  1f  ^_ 	Unit separator
# 
# 
# Printing Characters
# Char  Octal   Dec     Hex   Description
# SP  	40  	32  	20   	Space
# !  	41  	33  	21Exclamation mark
# "       42      34      22      Quotation mark (&amp;quot; in HTML)
# #  	43  	35  	23Cross hatch (number sign)
# $  	44  	3624Dollar sign
# %  	45  	3725Percent sign
# &       46      38      26      Ampersand
# '  	47  	3927Closing single quote (apostrophe)
# (  	50  	4028Opening parentheses
# )  	51  	4129Closing parentheses
# *  	52  	422aAsterisk (star, multiply)
# +  	53  	432bPlus
# ,  	54  	442cComma
# -  	55  	452dHypen, dash, minus
# .  	56  	462ePeriod
# /  	57  	472fSlant (forward slash, divide)
# 0 	60  	4830Zero
# 1  	61  	4931One
# 2  	62  	5032Two
# 3  	63  	5133Three
# 4  	64  	5234Four
# 5  	65  	5335Five
# 6  	66  	5436Six
# 7  	67  	5537Seven
# 8  	70  	5638Eight
# 9 	71  	5739Nine
# :  	72  	583aColon
# ;  	73  	593bSemicolon
# <       74      60      3c      Less than sign (&amp;lt; in HTML)
# =  	75  	613dEquals sign
# >       76      62      3e      Greater than sign (&amp;gt; in HTML)
# ?  	77  	633fQuestion mark
# @ 	100  	6440At-sign
# A 	101  	6541Uppercase A
# B 	102  	6642Uppercase B
# C 	103  	6743Uppercase C
# D 	104  	6844Uppercase D
# E 	105  	6945Uppercase E
# F 	106  	7046Uppercase F
# G 	107  	7147Uppercase G
# H 	110  	7248Uppercase H
# I 	111  	7349Uppercase I
# J 	112  	744aUppercase J
# K 	113  	754bUppercase K
# L 	114  	764cUppercase L
# M 	115  	774dUppercase M
# N 	116  	784eUppercase N
# O 	117  	794fUppercase O
# P 	120  	8050Uppercase P
# Q 	121  	8151Uppercase Q
# RS122  	8252Uppercase R
# S 	123  	8353Uppercase S
# T 	124  	8454Uppercase T
# U 	125  	8555Uppercase U
# V 	126  	8656Uppercase V
# W 	127  	8757Uppercase W
# X 	130  	8858Uppercase X
# Y 	131  	8959Uppercase Y
# Z 	132  	905aUppercase Z
# [ 	133  	915bOpening square bracket
# \ 	134  	925cReverse slant (Backslash)
# ] 	135  	935dClosing square bracket
# ^ 	136  	945eCaret (Circumflex)
# _ 	137  	955fUnderscore
# ` 	140  	9660Opening single quote
# a 	141  	9761Lowercase a
# b 	142  	9862Lowercase b
# c 	143  	9963Lowercase c
# d 	144 	10064Lowercase d
# e 	145 	10165Lowercase e
# f 	146 	10266Lowercase f
# g 	14710367Lowercase g
# h 	150 	10468Lowercase h
# i 	151 	10569Lowercase i
# j 	1521066aLowercase j
# k 	153 	1076bLowercase k
# l 	154 	1086cLowercase l
# m 	155 	1096dLowercase m
# n 	156 	1106eLowercase n
# o 	157 	1116fLowercase o
# p 	160 	11270Lowercase p
# q 	161 	11371Lowercase q
# r 	162 	11472Lowercase r
# s 	163 	11573Lowercase s
# t 	164 	11674Lowercase t
# u 	165 	11775 	Lowercase u
# v 	166 	11876Lowercase v
# w 	167 	11977Lowercase w
# x 	170 	12078Lowercase x
# y 	171 	12179Lowercase y
# z 	172 	1227aLowercase z
# { 	173 	1237bOpening curly brace
# | 	174 	1247cVertical line
# } 	175 	1257dClosing curly brace
# ~ 	176 	1267eTilde (approximate)
# DEL     177     127     7f      Delete (rubout), cross-hatch boxv

stringALL=$(cat 28825600F7E59B59.iptc)
#echo ""
#echo "+++++ORIG++++++++"
#echo $stringALL
#echo ""

# Cerco i caratteri divisori

START_POS=`expr index "$stringALL" ` 
TEXT_START_POS=`expr index "$stringALL" `
TEXT_END_POS=`expr index "$stringALL" `
END_POS=`expr index "$stringALL" ` 

# Derivo posizioni secondarie
TITLE_START_POS=$TEXT_START_POS
DATE_START_POS=$TEXT_END_POS

# Calcolo lunghezza substring
#METADATA_LENGTH=`expr $TEXT_START_POS - 3`
#TEXT_LENGTH=`expr (($TEXT_END_POS - $TEXT_START_POS)) - 3`
#DATE_LENGTH=`expr (($END_POS - $TEXT_LENGTH)) - 3`
#TEXT_LENGTH=$((($TEXT_END_POS - $TEXT_START_POS) -3 ))
#DATE_LENGTH=$((($END_POS - $TEXT_LENGTH) -60 ))
#stringALL_LENGTH=`expr length $stringALL`
stringALL_LENGTH=${#stringALL}
METADATA_LENGTH=$TEXT_START_POS
TEXT_LENGTH=$(($TEXT_END_POS - $TEXT_START_POS))
DATE_LENGTH=$(($END_POS - $TEXT_LENGTH))


# Estraggo substrings primari (metadati, testo, data)
stringMETA=${stringALL:$START_POS:$METADATA_LENGTH}
stringTEXT=${stringALL:$TEXT_START_POS:$TEXT_LENGTH}
stringDATE=${stringALL:$DATE_START_POS:$DATE_LENGTH}

# Estraggo substrings secondari (titolo, 
#TITLE_END_POS=`expr index "$stringTEXT" =`
#stringTITLE=${stringTITLE:$TITLE_START_POS:$TITLE_END_POS}

# Divido in paragrafi (2 newline)OIFS=$IFS
: '
#OLD_IFS=$IFS
#IFS=$'\n\n'o
COUNT=0
#for PAR in echo "$stringTEXT" 
#for PAR in $("${(@s:\n\n:)$(echo "$stringTEXT")}")
#
#do
#				COUNT=$(($COUNT+1))
#				echo $COUNT " " $PAR
#done
#IFS=$OLD_IFS
OLD_IFS=$IFS
IFS=$'\n'
while read line
do
				COUNT=$(($COUNT + 1))
				echo $COUNT: "<p>" $line "</p>"
done< <(echo "$stringTEXT")
IFS=$OLD_IFS
#c=1;while IFS= read;do printf "Line $((c++)) is: %s\n" "$REPLY";done< <(echo "$A")
stringPAR=$(echo "$stringTEXT" | sed -e "s/\r\n\n/<line>/")
echo "REGEX" `expr match : "$stringTEXT" '^\(.\+*\)'`
'
stringTITLE=`echo "$stringTEXT" |awk '/^.+=/'`

line_count=0
line_prev=""
while read line
do
				$line_count=$(($line_count + 1))
				echo $line_count: "<p>" $line "</p>"
				if [ $line =~ regexp ]
				then
					<lista-di-comandi>
				[elif <lista-condizione>
				then
					<lista-di-comandi>]
					...
				[else
					<lista-di-comandi>]
				fi

				
done< <(echo "$stringTEXT")
I
echo 
echo ""
echo "++++++++++++++++++++++++"
echo "stringALL_LENGTH" $stringALL_LENGTH
echo "START_POS: " $START_POS
echo "TEXT_START_POS: " $TEXT_START_POS
echo "TEXT_END_POS: " $TEXT_END_POS
echo "END_POS: " $END_POS
echo ""
echo "METADATA_LENGTH: " $METADATA_LENGTH
echo "TEXT_LENGTH: " $TEXT_LENGTH
echo "DATE_LENGTH: " $DATE_LENGTH
echo "++++++++++++++++++++++++"
echo ""


echo "<doc>"

	echo "<meta>"
		echo "$stringMETA"
	echo "</meta>"

	echo "<title>"
echo "$stringTITLE"
	echo "</title>"

	echo "<title_text>"
echo "$stringTEXT"
	echo "</title_text>"

	echo "<date>"
echo "$stringDATE"
	echo "</date>"

echo "</doc>"
