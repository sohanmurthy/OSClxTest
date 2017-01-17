static class Model extends LXModel {
  
  public Model() {
    super(new Fixture());
  }
  
  private static class Fixture extends LXAbstractFixture {
    
    private static final int MATRIX_SIZE_X = 25;
    private static final int MATRIX_SIZE_Y = 25;
    private static final int SPACING = 3;
    
    private Fixture() {
      for (int x = 0; x < MATRIX_SIZE_X; ++x) {
        for (int y = 0; y < MATRIX_SIZE_Y; ++y) {       
            addPoint(new LXPoint(x*SPACING, y*SPACING));          
        }
      }
    }
  }
}