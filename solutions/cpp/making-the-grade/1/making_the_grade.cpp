#include <array>
#include <string>
#include <vector>

// Round down all provided student scores.
std::vector<int> round_down_scores(std::vector<double> student_scores) {
    // TODO: Implement round_down_scores
    std::vector<int> rounded_scores(student_scores.size());
    for (int i = 0; i < student_scores.size(); i++) {
        rounded_scores[i] = static_cast<int>(student_scores[i]);
    }
    return rounded_scores;
}


// Count the number of failing students out of the group provided.
int count_failed_students(std::vector<int> student_scores) {
    // TODO: Implement count_failed_students
    int count = 0;
    for(int i = 0; i < student_scores.size(); i++) {
        if(student_scores[i] <= 40)
            count += 1;
    }
    return count;
}

// Determine how many of the provided student scores were 'the best' based on the provided threshold.
std::vector<int> above_threshold(std::vector<int> student_scores, int threshold) {
    // TODO: Implement above_threshold
    std::vector<int> best;
    for(int i = 0; i < student_scores.size(); i++) {
        if (student_scores[i] >= threshold) {
            best.push_back(student_scores[i]);
        }
    }
    return best;
}

// Create a list of grade thresholds based on the provided highest grade.
std::array<int, 4> letter_grades(int highest_score) {
    // TODO: Implement letter_grades
    int interval = (highest_score - 40) / 4;
    return {41, 41 + interval, 41 + 2 * interval, 41 + 3 * interval};
}

// Organize the student's rank, name, and grade information in ascending order.
std::vector<std::string> student_ranking(std::vector<int> student_scores, std::vector<std::string> student_names) {
    // TODO: Implement student_ranking
    std::vector<std::string> matched(student_scores.size());
    for (int i = 0; i < student_scores.size(); i++) {
        matched[i] = std::to_string(i + 1) + ". " + student_names[i] + ": " + std::to_string(student_scores[i]);
    }
    return matched;
}

// Create a string that contains the name of the first student to make a perfect score on the exam.
std::string perfect_score(std::vector<int> student_scores, std::vector<std::string> student_names) {
    // TODO: Implement perfect_score
    for (int i = 0; i < student_scores.size(); i++) {
        if (student_scores[i] == 100)
            return student_names[i];
    }
    return "";
}
