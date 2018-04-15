#!/bin/bash

secs=180

function speak(){
  sleep 0.5
  say -v Tessa "$1"
}

function hint_jab(){
  speak "Jab. Turn your fist over properly."
  speak "Jab. Snap your punch out and back. Hit them hard."
  speak "Jab. keep your rear hand up."
}

function hint_cross(){
  speak "Cross. Turn your fist over."
  speak "Cross. rotate your shoulder into the cross."
  speak "Cross. pivot your rear foot"
}

function hint_uppercut(){
  speak "Uppercut. Get your shoulder over your other foot."
  speak "Uppercut. dont dig down deep."
}

function boxing1(){
  speak "$SECONDS"
  speak "1"
  speak "Jab!"
  speak "Go!"
  speak "1. Jab. 1 Jab. 1 Jab."
  speak "1. Jab. 1 Jab. 1 Jab."
  speak "1. Jab. 1 Jab. 1 Jab."
}

function boxing2(){
  speak "$SECONDS"
  speak "2"
  speak "Jab, Cross!"
  speak "Go!"
  speak "2. Jab, Cross!"
  speak "2. Jab, Cross!"
  speak "2. quick. Jab, Cross!"
  speak "2. jab cross jab cross"
  speak "2. jab cross jab cross"
}

function boxing3(){
  speak "$SECONDS"
  speak "3"
  speak "Jab, Cross, Lead Hook"
  speak "3 is a Jab, Cross, Lead Hook"
  speak "Go!"
  speak "3 is a Jab, Cross, Lead Hook"
  speak "3 is a Jab, Cross, Lead Hook"
  speak "3 is a Jab, Cross, Lead Hook"
  speak "3 is a Jab, Cross, Lead Hook"
}
function boxing4(){
  speak "$SECONDS"
  speak "4"
  speak "Jab, Cross, Lead Hook, Cross"
  speak "4 is a Jab, Cross, Lead Hook, Cross"
  speak "Go!"
  speak "4 is 4. Its Jab, Cross, Lead Hook, Cross"
  speak "4 is 4. a Jab, Cross, Lead Hook, Cross"
  speak "4 is 4 .a Jab, Cross, Lead Hook, Cross"
  speak "4 is 4 .a Jab, Cross, Lead Hook, Cross"
}
function boxing5(){
  speak "$SECONDS"
  speak "5"
  speak "Jab, Cross, Lead Hook, Cross, Lead Uppercut!"
  speak "5 is a Jab, Cross, Lead Hook, Cross, Lead Uppercut!"
  speak "Go!"
  speak "5 is a long one. Jab, Cross, Lead Hook, Cross, Lead Uppercut!"
  speak "5 is a Jab, Cross, Lead Hook, Cross, Lead Uppercut!"
  speak "5 is a Jab, Cross, Lead Hook, Cross, Lead Uppercut!"
  speak "Go!"
  speak "5 is a Jab, Cross, Lead Hook, Cross, Lead Uppercut!"
}
function boxing6(){
  speak "$SECONDS"
  speak "6"
  speak "Cross, Lead Hook, Cross!"
  speak "Go!"
  speak "6. Go. Cross, Lead Hook, Cross!"
  speak "6. Cross, Lead Hook, Cross!"
  speak "6. Go. Cross, Lead Hook, Cross!"
  speak "6. Cross, Lead Hook, Cross!"
  speak "6 is 3. Go. Cross, Lead Hook, Cross!"

}
function boxing7(){
  speak "$SECONDS"
  speak "7. Counter!"
  speak "Lead Hook, Cross, Lead Hook!"
  speak "7. Lead Hook, Cross, Lead Hook!"
  speak "Go!"
  speak "7 is a counter. a Lead Hook, Cross, Lead Hook!"
  speak "7 is a counter. a Lead Hook, Cross, Lead Hook!"
  speak "7 is a counter. a Lead Hook, Cross, Lead Hook!"
  speak "7 is a counter. a Lead Hook, Cross, Lead Hook!"
  speak "7. Counter. blocked left. Lead hook, cross, lead hook. Hook, cross, hook."
  speak "7. Hook, cross, hook."
  speak "7. Hook, cross, hook."
}
function boxing8(){
  speak "$SECONDS"
  speak "8. Counter!"
  speak "Lead Uppercut, Lead Hook, Cross!"
  speak "8. Lead Uppercut, Lead Hook, Cross!"
  speak "Go!"
  speak "8 is a Lead Uppercut, Lead Hook, Cross!"
  speak "8 is a Lead Uppercut, Lead Hook, Cross!"
  speak "8 is a counter. A Lead Uppercut, Lead Hook, Cross!"
  speak "8 is a counter. A Lead Uppercut, Lead Hook, Cross!"
  speak "8. Uppercut, hook, cross! Uppercut, hook, cross"
}
function boxing9(){
  speak "$SECONDS"
  speak "9. Counter!"
  speak "Lead Uppercut, Cross, Lead Hook!"
  speak "9. Lead Uppercut, Cross, Lead Hook!"
  speak "9 is a counter. Lead Uppercut, Cross, Lead Hook!"
  speak "Go!"
  speak "9 is a counter. Lead Uppercut, Cross, Lead Hook!"
  speak "9 is a counter. Lead Uppercut, Cross, Lead Hook!"
  speak "9 is a counter. Lead Uppercut, Cross, Lead Hook!"
  speak "9. Uppercut, cross, hook. Uppercut, cross, hook"
}


cmds=( "boxing1" "boxing2" "boxing3" "boxing4" "boxing5" "boxing6" "boxing7" "boxing8" "boxing9" )

SECONDS=0
while (( SECONDS < secs )); do
  i=$(( RANDOM % ${#cmds[@]} ))
  ${cmds[i]}
  sleep $[ ( $RANDOM % 6 )  + 1 ]s
done
