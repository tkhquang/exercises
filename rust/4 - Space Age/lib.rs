#[derive(Debug)]
pub struct Duration(u64);

impl From<u64> for Duration {
    fn from(s: u64) -> Self {
        Duration(s)
    }
}

pub trait Planet {
    const PERIOD: f64 = 0.0;

    fn years_during(d: &Duration) -> f64 {
        d.0 as f64 / Self::PERIOD
    }
}

pub struct Mercury;
pub struct Venus;
pub struct Earth;
pub struct Mars;
pub struct Jupiter;
pub struct Saturn;
pub struct Uranus;
pub struct Neptune;

impl Planet for Mercury {
    const PERIOD: f64 = 7600388.0;
}
impl Planet for Venus {
    const PERIOD: f64 = 19413750.0;
}
impl Planet for Earth {
    const PERIOD: f64 = 31556952.0;
}
impl Planet for Mars {
    const PERIOD: f64 = 59352814.0;
}
impl Planet for Jupiter {
    const PERIOD: f64 = 374347972.0;
}
impl Planet for Saturn {
    const PERIOD: f64 = 929273281.0;
}
impl Planet for Uranus {
    const PERIOD: f64 = 2651315576.0;
}
impl Planet for Neptune {
    const PERIOD: f64 = 5200311775.0;
}
