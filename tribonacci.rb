def tribonacci( n )
  return  1  if ( 0..2 ).include? n
  ( tribonacci( n - 1 ) + tribonacci( n - 2 ) + tribonacci( n - 3 ) )
end

15.times{ |i|
	puts tribonacci( i )
}