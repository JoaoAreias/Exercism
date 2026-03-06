package lasagna

// TODO: define the 'PreparationTime()' function
func PreparationTime(layers []string, preparationTime int) int {
    if preparationTime == 0 {
        preparationTime = 2;
    }
	return len(layers) * preparationTime
}

// TODO: define the 'Quantities()' function
func Quantities(layers []string) (int, float64) {
    noodles, sauce := 0, 0.;
    for i := 0; i < len(layers); i++ {
        switch layers[i] {
            case "noodles":
        		noodles++;
            	break;
            case "sauce":
        		sauce++;
            	break;
        }
    }
    return 50 * noodles, 0.2 * sauce
}

// TODO: define the 'AddSecretIngredient()' function
func AddSecretIngredient(friendsList, myList []string) []string {
    myList[len(myList) - 1] = friendsList[len(friendsList) - 1];
    return myList
}

// TODO: define the 'ScaleRecipe()' function
func ScaleRecipe(quantities []float64, portions int) []float64 {
    scaled := make([]float64, len(quantities));
    for i := 0; i < len(quantities); i++ {
        scaled[i] = quantities[i] * float64(portions) / 2;
    }
	return scaled
}

// Your first steps could be to read through the tasks, and create
// these functions with their correct parameter lists and return types.
// The function body only needs to contain `panic("")`.
// 
// This will make the tests compile, but they will fail.
// You can then implement the function logic one by one and see
// an increasing number of tests passing as you implement more 
// functionality.
