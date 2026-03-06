(module
  (memory (export "mem") 1)
 
  ;;
  ;; Reverse a string
  ;;
  ;; @param {i32} offset - The offset of the input string in linear memory
  ;; @param {i32} length - The length of the input string in linear memory
  ;;
  ;; @returns {(i32,i32)} - The offset and length of the reversed string in linear memory
  ;;
  (func (export "reverseString") (param $offset i32) (param $length i32) (result i32 i32)
    (local $left i32)
    (local $right i32)
    
    (local.set $left (local.get $offset))
    (local.set $right 
      (i32.add (local.get $offset) (i32.sub (local.get $length) (i32.const 1))))
    
    (if (i32.eqz (local.get $length))
      (then (return (local.get $offset) (local.get $length))))
    
    (loop $loop
      ;; Swap the two values with the XOR algorith
      (i32.store8 (local.get $left)
        (i32.xor 
          (i32.load8_u (local.get $left))
          (i32.load8_u (local.get $right))))
      (i32.store8 (local.get $right)
        (i32.xor 
          (i32.load8_u (local.get $left))
          (i32.load8_u (local.get $right))))
      (i32.store8 (local.get $left)
        (i32.xor 
          (i32.load8_u (local.get $left))
          (i32.load8_u (local.get $right))))
    
      ;; Update pointer positions
      (local.set $left (i32.add (local.get $left) (i32.const 1)))
      (local.set $right (i32.sub (local.get $right) (i32.const 1)))
    
      ;; Continue loop if there are more elements to swap
      (br_if $loop (i32.lt_u (local.get $left) (local.get $right)))
    )

    (return (local.get $offset) (local.get $length))
  )
)
