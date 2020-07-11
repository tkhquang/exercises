use std::fmt;

#[derive(Debug, PartialEq, Eq, Clone)]
pub struct Clock(i32);

impl Clock {
    fn normalize(&self) -> Self {
        Clock(((self.0 % 1440) + 1440) % 1440)
    }

    pub fn new(h: i32, m: i32) -> Self {
        Clock(h * 60 + m).normalize()
    }

    pub fn add_minutes(&self, m: i32) -> Self {
        Clock(self.0 + m).normalize()
    }
}

impl fmt::Display for Clock {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        write!(f, "{:02}:{:02}", self.0 / 60, self.0 % 60)
    }
}
