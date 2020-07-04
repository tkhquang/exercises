pub fn verse(n: u32) -> String {
    match n {
        0 => {
            String::from("No more bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n")
        },
        1 => {
            String::from("1 bottle of beer on the wall, 1 bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n")
        },
        _ => {
            format!("{} bottle{} of beer on the wall, {} bottle{} of beer.\nTake one down and pass it around, {} bottle{} of beer on the wall.\n", n, single_plural(n), n, single_plural(n), n - 1, single_plural(n-1))
        }
    }
}

fn single_plural (n: u32) -> &'static str {
  if n > 1 { "s" } else { "" }
}

pub fn sing(start: u32, end: u32) -> String {
    let mut lyrics: String = String::new();
    for i in (end..=start).rev() {
        lyrics.push_str(&verse(i));

        if i != end {
            lyrics.push_str("\n");
        }
    }
    lyrics
}
