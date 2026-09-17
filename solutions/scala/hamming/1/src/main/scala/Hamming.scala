object Hamming {
  def distance(dnaStrandOne: String, dnaStrandTwo: String): Option[Int] = {
    if (dnaStrandOne.length != dnaStrandTwo.length)
      None
    else {
      val dist = dnaStrandOne
                  .zip(dnaStrandTwo)
                  .map((a, b) => if (a == b) 0 else 1)
                  .sum();
      Some(dist)
    }
  }
}
