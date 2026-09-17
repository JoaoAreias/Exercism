package booking

import "time"

// Schedule returns a time.Time from a string containing a date.
func Schedule(date string) time.Time {
    format := "1/2/2006 15:04:05";
	parsed, _ := time.Parse(format, date);
    return parsed
}

// HasPassed returns whether a date has passed.
func HasPassed(date string) bool {
    format := "January 2, 2006 15:04:05";
	parsed, _ := time.Parse(format, date);
    return parsed.Before(time.Now())
}

// IsAfternoonAppointment returns whether a time is in the afternoon.
func IsAfternoonAppointment(date string) bool {
    format := "Monday, January 2, 2006 15:04:05";
	parsed, _ := time.Parse(format, date);
    return parsed.Hour() >= 12 && parsed.Hour() < 17
}

// Description returns a formatted string of the appointment time.
func Description(date string) string {
    inputFormat := "1/2/2006 15:04:05";
    outputFormat := "You have an appointment on Monday, January 2, 2006, at 15:04.";
    parsed, _ := time.Parse(inputFormat, date);
	return parsed.Format(outputFormat)
}

// AnniversaryDate returns a Time with this year's anniversary.
func AnniversaryDate() time.Time {
    return time.Date(time.Now().Year(), time.September, 15, 0, 0, 0, 0, time.UTC)    
}
