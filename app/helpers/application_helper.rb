module ApplicationHelper
    #returns the full title when no one is defined!
    def full_title(page_title = '')
        base_title = "Hatsune Miku Blog"
        if page_title.empty?
            base_title 
        else 
            page_title + " | " + base_title 
        end 
    end

    
end
