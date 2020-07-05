#[derive(Debug)]
pub struct HighScores {
    leaderboard : Vec<u32>,
}

impl HighScores {
    pub fn new(scores: &[u32]) -> Self {
        Self {
          leaderboard: scores.to_vec()
        }
    }

    pub fn scores(&self) -> &[u32] {
        &self.leaderboard
    }

    pub fn latest(&self) -> Option<u32> {
        self.leaderboard.last().cloned()
    }

    pub fn personal_best(&self) -> Option<u32> {
        self.leaderboard.iter().max().cloned()
    }

    pub fn personal_top_three(&self) -> Vec<u32> {
        let mut cloned = self.leaderboard.clone();
        cloned.sort_unstable();
        cloned.reverse();
        
        cloned[..std::cmp::min(3, cloned.len())].to_vec()
    }
}
