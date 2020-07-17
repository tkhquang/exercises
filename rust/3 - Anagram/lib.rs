use std::collections::HashSet;

fn sort(word: &str) -> Vec<char> {
    let mut sorted_word: Vec<char> = word.chars().collect();
    sorted_word.sort();
    sorted_word
}

pub fn anagrams_for<'a>(word: &str, possible_anagrams: &[&'a str]) -> HashSet<&'a str> {
    let word = word.to_lowercase();
    let sorted_word = sort(&word);
    
    let anagrams: HashSet<&str> = possible_anagrams
        .iter()
        .cloned()
        .filter(|&possible_anagram| {
            let possible_anagram = possible_anagram.to_lowercase();
            sort(&possible_anagram) == sorted_word && possible_anagram != word
        })
        .collect();
    
    anagrams
}
