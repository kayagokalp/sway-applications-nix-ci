library;

pub struct Record {
    /// The timestamp at which the name expires, and someone else can re-register the same name
    expiry: u64,
    /// The identity to which the name resolves to
    identity: Identity,
    /// The identity which controls the name, and can change the identity and owner
    owner: Identity,
}

impl Record {
    pub fn new(expiry: u64, identity: Identity, owner: Identity) -> Self {
        Self {
            expiry,
            identity,
            owner,
        }
    }
}
