let game = function( p ) {

  let widthCanvas  = canvas.width();
  let heightCanvas = canvas.height();

  p.setup = function() {
    p.createCanvas(widthCanvas, heightCanvas);
  };

  p.draw = function() {
    p.background(0);
    p.fill(255);
    p.rect(30,50,50,50);
  };
};
