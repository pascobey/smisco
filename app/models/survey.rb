class Survey < ApplicationRecord
    def responses_safe
        if self.responses.class != Hash
            JSON.parse(self.responses.gsub('=>', ':')).stringify_keys
        else
            self.responses
        end
    end
end
