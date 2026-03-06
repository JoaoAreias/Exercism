/* Package weather computes the weather
forecast for different cities in Goblinocus.
*/
package weather

// CurrentCondition gives the current condition of a given city.
var CurrentCondition string
// CurrentLocation is the city being evaluated.
var CurrentLocation string

// Forecast generates a string informing the Forecast in a city of Goclinocus.
func Forecast(city, condition string) string {
	CurrentLocation, CurrentCondition = city, condition
	return CurrentLocation + " - current weather condition: " + CurrentCondition
}
