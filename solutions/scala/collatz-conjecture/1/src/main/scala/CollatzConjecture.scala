object CollatzConjecture {
  def steps(n: Int): Option[Int] = n match {
    case 1 => Some(0);
    case n if n <= 0 => None;
    case n if n % 2 == 0 => steps(n / 2) match {
      case Some(i) => Some(i + 1);
      case None => None;
    }
    case n if n % 2 == 1 => steps(3 * n + 1) match {
      case Some(i) => Some(i + 1);
      case None => None;
    }
  }
}