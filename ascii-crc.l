#!/usr/bin/env pil
#!picolisp 21 only

(load "@lib/simul.l")
(de planka ()
   (prin "+")
   (do 17
      (prin "-") )
   (prinl "+") )
(de display ()
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
(let G (simul~grid 9 17)
   (for L G
      (for This L
         (=: N 0) ) )
   (with 'e8
      (=: N 15)
      (for N (randL16)
         (do 4
            # XXX
            (let? M
               (case (& N 3)
                  (0
                     (or (simul~north (simul~west This)) (simul~north This) (simul~west This)) )
                  (1
                     (or (simul~north (simul~east This)) (simul~north This) (simul~east This)) )
                  (2 
                     (or (simul~south (simul~west This)) (simul~south This) (simul~west This)) )
                  (3
                     (or (simul~south (simul~east This)) (simul~south This) (simul~east This)) ) )
               (setq This M)
               (when (> 15 (: N))
                  (=: N (inc (: N))) ) )
            (setq N (>> 2 N)) ) )
      (=: N 16) )
   (display) )
(bye)
