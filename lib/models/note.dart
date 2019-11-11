class Note {
  int _id;
  String _title;
  String _description;
  String _date;
  int _priority;
  // String _telp;
  // String _almt;
  // String _email;
  //koding diatas sdh bersil dikoneksikan dengan note_list bagian
  //( no.33 navigateToDetail(Note('', '','','','',  2), 'Add Note');)
  // tapi erro dibagain simpan Database_helper
  Note(this._title, this._date,this._priority, [this._description]);
  Note.withId(this._id, this._title, this._date,this._priority,
      [this._description]);
  int get id => _id;
  String get title => _title;
  String get description => _description;
  int get priority => _priority;
  // String get telp  => _telp;
  String get date => _date;
  // String get almt => _almt;
  // String get email => _email;
  
  set title(String newTitle) {
    if (newTitle.length <= 55) {
      this._title = newTitle;
    }
  }

  set description(String newDescription) {
    if (newDescription.length <= 55) {
      this._description = newDescription;
    }
  }
  set priority(int newPriority) {
    if (newPriority >= 1 && newPriority <= 2) {
      this._priority = newPriority;
    }
  }

  // set telp(String newTelp) {
  //   if (newTelp.length <= 12) {
  //     this._telp = newTelp;
  //   }
  // }
  // set almt(String newAlmt) {
  //   if (newAlmt.length <= 50) {
  //     this._almt = newAlmt;
  //   }
  // }set email(String newemail) {
  //   if (newemail.length <= 50) {
  //     this._email = newemail;
  //   }
  // }

  set date(String newDate) {
    this._date = newDate;
  }

  // Convert a Note object into a Map object
  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if (id != null) {
      map['id'] = _id;
    }
    map['title'] = _title;
    map['description'] = _description;
    // map['telp'] = _telp;
    map['priority'] = _priority;
    map['date'] = _date;
    // map['almt'] = _almt;
    // map['email'] = _email;
    return map;
  }

  // Extract a Note object from a Map object
  Note.fromMapObject(Map<String, dynamic> map) {
    this._id = map['id'];
    this._title = map['title'];
    this._description = map['description'];
    // this._telp = map['telp'];
    this._priority = map['priority'];
    this._date = map['date'];
    // this._almt = map['almt'];
    // this._email = map['email'];
  }
}
