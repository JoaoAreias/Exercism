object Etl {
  def transform(scoreMap: Map[Int, Seq[String]]): Map[String, Int] = {
    scoreMap.flatMap { case (score, words) => words.map(word => word.toLowerCase -> score)
    }.toMap
  }
}
