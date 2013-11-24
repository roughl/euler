package main

import "fmt"

func nRightTriangles(p int) int {
	n := 0
	for c:=1; c<=p/2; c++ {
		for b:=1; b<=(p-c)/2; b++ {
			a := (p-c-b)
			if (a*a + b*b) == c*c {
				n++
			}
		}
	}
	return n
}

func main() {
	max := 0
	pi := 0

	for p :=1; p<=1000; p++ {
		n := nRightTriangles(p)
		if n > max {
			max = n
			pi = p
		}
	}
	fmt.Println(pi, "--->", max)
}

