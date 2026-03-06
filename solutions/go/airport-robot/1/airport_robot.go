package airportrobot

import "fmt"
// Write your code here.
// This exercise does not have tests for each individual task.
// Try to solve all the tasks first before running the tests.
type Greeter interface {
    LanguageName() string
    Greet(string) string
}

func SayHello(visitor string, greeter Greeter) string {
    return greeter.Greet(visitor)
}

type Italian struct {}
func (greeter Italian) LanguageName() string {
    return "Italian"
}
func (greeter Italian) Greet(visitor string) string {
    return fmt.Sprintf("I can speak Italian: Ciao %s!", visitor);
}

type Portuguese struct {}
func (greeter Portuguese) LanguageName() string {
    return "Portuguese"
}

func (greeter Portuguese) Greet(visitor string) string {
    return fmt.Sprintf("I can speak Portuguese: Olá %s!", visitor);
}