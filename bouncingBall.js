function bouncingBall(h,  bounce,  window) {
  if( 0 < bounce  && bounce <1 && h > window){
    return 2 + bouncingBall(h* bounce, bounce, window)
  }
  else{
    return -1;
  }
}
