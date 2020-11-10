class HomeReflex < ApplicationReflex    


    def toggle_page
        reinstantiate_vars(element.dataset[:vars])
        @reflex_pages.each do |page, b|
            @reflex_pages[page] = false
        end
        @reflex_pages[element.dataset[:page]] = true
    end

    def set_response
        reinstantiate_vars(element.dataset[:vars])
        if @radioed != ''
            @responses[@radioed] = @responses[@radioed] - 1
        end
        @radioed = element.value
        @responses[@radioed] = @responses[@radioed] + 1
    end

end