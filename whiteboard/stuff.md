vs - vim $1; source $1;

savecommand$(){
  $piece
  $asa
  $name
  $file
  ... >> $file
  $VISUAL $file
  source $file
}