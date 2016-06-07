static final float TAU = (float) (2.0 * Math.PI);

PShader pshader;

void setup() {
  size(800, 600, P3D);
  perspective(TAU/6, (float)width / (float)height, 0.1, 10000);
  camera(
    0, 0, 200,
    0, 0, 0,
    0, 1, 0
    );

  pshader = loadShader("fragment.glsl", "vertex.glsl");
}

void draw() {
  background(0);
  noStroke();
  fill(255, 255, 255);

  shader(pshader);

  for (float y = -100; y < +100; y += 1) {
    for (float x = -100; x < +100; x += 1) {
      { pushMatrix();

        translate(x, y, 0);
        fill(random(255), random(255), random(255));

        { beginShape(QUADS);
          vertex(0, 0, 0);
          vertex(1, 0, 0);
          vertex(1, 1, 0);
          vertex(0, 1, 0);
        endShape(); }

      popMatrix(); }
    }
  }

  surface.setTitle((int)frameRate + " FPS");
}
