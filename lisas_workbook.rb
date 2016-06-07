num_chap, max_prob = gets.strip.split(" ")
num_chap = num_chap.to_i
max_prob = max_prob.to_i
num_prob = gets.strip.split(" ")
num_prob = num_prob.map{|num| num.to_i}
current_page = 1
special_prob_count = 0
num_prob.each do |num_prob|
    prob_left = num_prob
    chapter_page = 1
    while prob_left > max_prob
        start_prob = (chapter_page -1) * max_prob + 1
        end_prob = chapter_page * max_prob
        special_prob_count += 1 if (start_prob..end_prob).include?(current_page)
        current_page += 1
        chapter_page += 1
        prob_left = prob_left - max_prob
    end
    start_prob = (chapter_page -1) * max_prob + 1
    end_prob = num_prob
    special_prob_count += 1 if (start_prob..end_prob).include?(current_page)
    current_page += 1
end
puts special_prob_count