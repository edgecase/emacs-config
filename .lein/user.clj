(if (>= (.compareTo (clojure-version) "1.3.0") 0)
  (do (use 'clojure.repl)
      (use 'clojure.java.javadoc)))