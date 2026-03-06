object CollatzConjecture {
  def steps(n: Int, acc: Int = 0): Option[Int] = n match {
    case 1 => Some(acc);
    case n if n <= 0 => None;
    case n if n % 2 == 0 => steps(n / 2, acc + 1);
    case n if n % 2 == 1 => steps(3 * n + 1, acc + 1);
  }
}