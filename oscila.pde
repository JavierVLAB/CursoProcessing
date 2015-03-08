float oscila(float T, float max, float min){
  //oscilacion entre un maximo y un minimo para el tiempo t
  float valor = (1+sin(TWO_PI*frameCount/(T*frameRate)))*(max-min) + min; 
  return valor;
}
