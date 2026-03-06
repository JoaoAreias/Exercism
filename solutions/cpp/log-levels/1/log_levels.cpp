#include <string>

namespace log_line {
    std::string message(std::string line) {
        // return the message
        int pos = line.find(" ");
        return line.substr(pos + 1, line.size());
    }

    std::string log_level(std::string line) {
        // return the log level
        int pos = line.find("]");
        return line.substr(1, pos - 1);
    }

    std::string reformat(std::string line) {
        // return the reformatted message
        std::string m_message = message(line);
        std::string m_log_level = log_level(line);
        return m_message + " (" + m_log_level + ")";
    }
}
