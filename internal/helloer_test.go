package internal

import "testing"

func TestHelloer(t *testing.T) {
	want := "Hello, world!"
	got := Helloer()
	if got != want {
		t.Errorf("Helloer() = %v, want %v", got, want)
	}
}
