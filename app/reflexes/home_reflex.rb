class HomeReflex < ApplicationReflex    

    def hide_reflex_pages
        @reflex_pages.each do |page, b|
            @reflex_pages[page] = false
        end
    end

    def show_survey
        reinstantiate_vars(element.dataset[:vars])
        @reflex_pages['HOME'] = false
        @reflex_pages['SURVEY'] = true
    end

end