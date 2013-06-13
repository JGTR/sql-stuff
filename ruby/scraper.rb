# Scraper

require 'nokogiri'
require 'sqlite3'
require 'open-uri'
require 'pry'




db = SQLite3::Database.new ":db:"

db.execute "CREATE TABLE IF NOT EXISTS Students(Id INTEGER PRIMARY KEY, Name TEXT)"

db.execute "INSERT INTO Students(Name) VALUES ('#{name}')"



def find_codercred(codercred)
  str = ".services a[href*=" + codercred +"]"
  $page.search(str).attribute("href").value
end

$page.search(".services a")[1].attribute("href").value

$page = Nokogiri::HTML(open("http://students.flatironschool.com/students/chrisgonzales.html"))

students = []



urls.each do |url|
  student = {
    :name => $page.search("h4").first.text,
    :quote => $page.search("h3").first, # quote
    :biography => $page.search("p").first.text,
    :education => $page.search(".services")[1].text,
    :work => $page.search(".services")[2].text,
    :treehouse => find_codercred("treehouse"),
    :codeschool => find_codercred("codeschool"),
    :coderwall => find_codercred("coderwall"),
    :github => $page.search(".section-services a[href*='github']").attribute("href").value,
    :codeacademy => $page.search(".services a")[2].attribute("href").value
  }
  students << student
end

students.each_with_index do |student_hash, index|
  insert = "INSERT INTO Students VALUES (#{index+1}"

  student_hash.each do |attribute, value| 
    db.execute "INSERT INTO Students VALUES (
  end
end


def determine_columns
end

binding.pry

# characteristics = {
#   :name = page.search("h4").first.text
#   :quote = page.search("h3").first # quote
#   # twitter = 
#   # linkedin =
#   :biography = $page.search("p").first.text
#   :education = $page.search(".services")[1].text
#   :work = $page.search(".services")[2].text

#   :treehouse = find_codercred("treehouse")
#   :codeschool = find_codercred("codeschool")
#   :coderwall = find_codercred("coderwall")]
#   :github = $page.search(".section-services a[href*='github']").attribute("href").value
#   :codeacademy = $page.search(".services a")[2].attribute("href").value
# }


db.execute("INSERT INTO Students values(:word, :integer)", {:word=> "Here"}, :integer=>2)