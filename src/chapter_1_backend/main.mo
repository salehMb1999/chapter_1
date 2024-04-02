import Buffer "mo:base/Buffer";
actor crazy {

  let name : Text = "Learning Motoko Language";
  var manifesto : Text = "Im learning Motoko to Learn Future and be a fullstack developer";
  let goals : Buffer.Buffer<Text> = Buffer.Buffer<Text>(0);
  public query func getName() : async Text {
    return name;
  };

  public query func getManifesto() : async Text {
    return manifesto;
  };

  public func setManifesto(newManifesto : Text) : async () {
    manifesto := newManifesto;
    return ();
  };
  public func addGoal(newGoal : Text) : async () {
    goals.add(newGoal);
    return ();
  };

  public query func getGoals() : async [Text] {
    return Buffer.toArray(goals);
  };
};
