# Подключаем файлы "задавальщик вопросов"" и "выдавальщик результата""
require "./lib/test.rb"
require "./lib/print_result.rb"

questions = Test.new
results = ResultTest.new

name = ARGV[0]
name = name.encode("UTF-8") if (Gem.win_platform? && ARGV[0])
name = "Гость" if name == nil

puts "Здравствуйте, #{name}"
puts "Тест поможет определить ваш уровень коммуникабельности.\n
Для этого необходимо правдиво ответить на следующие вопросы."
questions.ask_questions

puts "Результаты теста\nВы набрали:"
questions.points
results.result_test(questions)




