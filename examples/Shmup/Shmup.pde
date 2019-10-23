// The ArrayList replaces arrays. The main benefit of using ArrayLists is that
// they are easier to work with then the number of items stored in the list is
// changing over time.
//
// Because we need to tell Java what type of object is being stored in the list,
// we need to add the <Projectile> part.
ArrayList<Projectile> projectiles;

void setup() {
  size(800,600);
  
  // Instantiate the list. 
  projectiles = new ArrayList<Projectile>();
  
  // Create 100 Projectile objects.
  for (int i = 0; i < 100; i++) {
    projectiles.add(new Projectile(random(0,width), random(0,height)));//0  
  }
}

void draw() {
  background(0);
  
  // Update each of the Projectile objects stored in the list.
  for (int i = 0; i < projectiles.size(); i++) { 
    Projectile p = projectiles.get(i);
    p.update();
  }
}
