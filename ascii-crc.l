#!/usr/bin/env pil
#!picolisp 21 only

# XXX
(seed (in "/dev/urandom" (rd 8)))
(de setrand (G)
   (for L G
      (for This L
         (=: N (rand 0 16)) ) ) )
# XXX

(load "@lib/simul.l")
(de grid0 (G)
   (for L G
      (for This L
         (=: N 0) ) ) )
(de planka ()
   (prin "+")
   (do 17
      (prin "-") )
   (prinl "+") )
(de display (G)
   (planka)
   (for L G
      (prin "|")
      (for This L
         (prin
            (case (: N)
               (0 " ") (1 ".") (2 "o") (3 "+") (4 "=")
               (5 "*") (6 "B") (7 "O") (8 "X") (9 "@")
               (10 "%") (11 "&") (12 "#") (13 "/")
               (14 "\^") (15 "S") (16 "E") ) ) )
      (prinl "|") )
   (planka) )

(setq G (simul~grid 9 17))
(setrand G)
# (grid0 G)
(display G)

(println (hex "fe") (bin (hex "fe")))
(let N (hex "fe")
   (do 4
      (println (& N 3))
      (setq N (>> 2 N))
   )
)

(bye)
