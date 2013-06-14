require 'nokogiri'
require 'sqlite3'
require 'open-uri'
require 'pry'
 
# def comb_page
# page = Nokogiri::HTML(open("http://students.flatironschool.com/students/chrisgonzales.html"))
# student_name = page.search("h4").first.text
# quote = page.search("h3").first.text
# scraped_database = SQLite3::Database.new ":scraped_data:"
# scraped_database.execute "CREATE TABLE IF NOT EXISTS students(Id INTEGER PRIMARY KEY, name TEXT)"
# scraped_database.execute "INSERT INTO students (name) VALUES ('#{student_name}')"
 
# #--------------------------------------------
scraped_database = SQLite3::Database.new ":scraped_data:"
 
index = Nokogiri::HTML(open("http://students.flatironschool.com/index.html"))
hrefs = index.css("div.home-blog a")
href = hrefs.map{ |link|   link['href'] }
 
student_hrefs = href.select{|href|
href.match(/s|S/)!=nil # avi black magic code regular expressions searching for upper and lower case s
}
#student_href = student_href.reverse

scraped_database.execute "CREATE TABLE IF NOT EXISTS students(Id INTEGER PRIMARY KEY, name TEXT)" 

# def find_codercred(codercred, page)
#   str = ".services a[href*=" + codercred +"]"
#   page.css(str).attribute("href").value
# end

students = []

def scrape_student(page, students)
  
  if page 
    student = {
      :quote => (page.css("h3").first unless page.css("h3").nil?), # quote
      :biography => (page.css("p").first.text unless page.css("p").nil?),
      :work => (page.css(".services")[2].text unless page.css(".services")[2].nil?)
      # :treehouse => find_codercred("treehouse", page),
      # :codeschool => find_codercred("codeschool", page),
      # :coderwall => find_codercred("coderwall", page),
      # :github => (page.css(".section-services a[href*='github']").attribute("href").value unless page.css(".section-services a[href*='github']").nil?)
    }

    # if page.css(".services a")[2]
    #   student[:codeacademy] = page.css(".services a")[2].attribute("href").value
    # else
    #   student[:codeacademy] = "none"
    # end

      page.css(".services a[href*=treehouse]").attribute("href").value

    # if page.css("h4")
    #   student[:name] = page.css("h4").first.text
    # else
    #   student[:name] = "none"
    # end

    # if page.css(".services")[1]
    #   student[:education] = page.css(".services")[1].text
    # else
    #   student[:education] = "none"
    # end


    students << student
    puts student
  end
end

student_hrefs.each do |url_end|
  begin
   page = Nokogiri::HTML(open("http://students.flatironschool.com/#{url_end}"))
     # scraped_database.execute "INSERT INTO students (name) VALUES ('#{student_name}')"

  scrape_student(page, students)
  
  rescue OpenURI::HTTPError => ex
  end
end
# page = Nokogiri::HTML(open("http://students.flatironschool.com/#{url_end}"))



puts students

binding.pry

# def pass_to_db
# end

# def create_database
# end



scraped_database.execute "SELECT * FROM students"