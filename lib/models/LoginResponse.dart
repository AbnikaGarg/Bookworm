class LoginResponse {
  LoginResponse({
      this.status, 
      this.message, 
      this.data,});

  LoginResponse.fromJson(dynamic json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  String? status;
  String? message;
  Data? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['message'] = message;
    if (data != null) {
      map['data'] = data?.toJson();
    }
    return map;
  }

}

class Data {
  Data({
      this.loginKey, 
      this.userData, 
      this.allBalance,});

  Data.fromJson(dynamic json) {
    loginKey = json['login_key'];
    if (json['user_data'] != null) {
      userData = [];
      json['user_data'].forEach((v) {
        userData?.add(UserData.fromJson(v));
      });
    }
    allBalance = json['all_balance'] != null ? AllBalance.fromJson(json['all_balance']) : null;
  }
  String? loginKey;
  List<UserData>? userData;
  AllBalance? allBalance;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['login_key'] = loginKey;
    if (userData != null) {
      map['user_data'] = userData?.map((v) => v.toJson()).toList();
    }
    if (allBalance != null) {
      map['all_balance'] = allBalance?.toJson();
    }
    return map;
  }

}

class AllBalance {
  AllBalance({
      this.activationWallet, 
      this.incomeWallet, 
      this.levelIncome, 
      this.generationIncome, 
      this.totalIncome, 
      this.teamBusiness,});

  AllBalance.fromJson(dynamic json) {
    activationWallet = json['activation_wallet'];
    incomeWallet = json['income_wallet'];
    levelIncome = json['level_income'];
    generationIncome = json['generation_income'];
    totalIncome = json['total_income'];
    teamBusiness = json['team_business'];
  }
  String? activationWallet;
  String? incomeWallet;
  String? levelIncome;
  String? generationIncome;
  String? totalIncome;
  String? teamBusiness;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['activation_wallet'] = activationWallet;
    map['income_wallet'] = incomeWallet;
    map['level_income'] = levelIncome;
    map['generation_income'] = generationIncome;
    map['total_income'] = totalIncome;
    map['team_business'] = teamBusiness;
    return map;
  }

}

class UserData {
  UserData({
      this.id, 
      this.userId, 
      this.refId, 
      this.nomId, 
      this.username, 
      this.password, 
      this.firstName, 
      this.lastName, 
      this.email, 
      this.address, 
      this.city, 
      this.state, 
      this.country, 
      this.phonecode, 
      this.zipcode, 
      this.telephone, 
      this.adminStatus, 
      this.userStatus, 
      this.registrationDate, 
      this.tCode, 
      this.userPlan, 
      this.designation, 
      this.aboutus, 
      this.dob, 
      this.sex, 
      this.image, 
      this.accName, 
      this.acNo, 
      this.bankNm, 
      this.branchNm, 
      this.swiftCode, 
      this.usdtAddress, 
      this.trxAddress, 
      this.userRankName, 
      this.ts, 
      this.merriedStatus, 
      this.lastLoginDate, 
      this.currentLoginDate, 
      this.binaryPos, 
      this.idCard, 
      this.idStatus, 
      this.masterAccount, 
      this.issued, 
      this.productType, 
      this.issueDate, 
      this.adminRemark1, 
      this.withdrawStatus, 
      this.fundStatus, 
      this.idNo, 
      this.kycStatus, 
      this.updateStatus, 
      this.btcAdd, 
      this.userAccNo, 
      this.refLeg, 
      this.groupType, 
      this.tetherAddress, 
      this.secret, 
      this.twoWay, 
      this.rank, 
      this.rankName, 
      this.rankPer, 
      this.gtbWalletAddress, 
      this.referralCode, 
      this.accountType, 
      this.mainId, 
      this.refCount, 
      this.autoshipStatus, 
      this.autoshipDate, 
      this.earningStatus, 
      this.levelOpen, 
      this.userRoleId, 
      this.zoomUserId, 
      this.incomeMultiplier, 
      this.deviceToken,});

  UserData.fromJson(dynamic json) {
    id = json['id'];
    userId = json['user_id'];
    refId = json['ref_id'];
    nomId = json['nom_id'];
    username = json['username'];
    password = json['password'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    email = json['email'];
    address = json['address'];
    city = json['city'];
    state = json['state'];
    country = json['country'];
    phonecode = json['phonecode'];
    zipcode = json['zipcode'];
    telephone = json['telephone'];
    adminStatus = json['admin_status'];
    userStatus = json['user_status'];
    registrationDate = json['registration_date'];
    tCode = json['t_code'];
    userPlan = json['user_plan'];
    designation = json['designation'];
    aboutus = json['aboutus'];
    dob = json['dob'];
    sex = json['sex'];
    image = json['image'];
    accName = json['acc_name'];
    acNo = json['ac_no'];
    bankNm = json['bank_nm'];
    branchNm = json['branch_nm'];
    swiftCode = json['swift_code'];
    usdtAddress = json['usdt_address'];
    trxAddress = json['trx_address'];
    userRankName = json['user_rank_name'];
    ts = json['ts'];
    merriedStatus = json['merried_status'];
    lastLoginDate = json['last_login_date'];
    currentLoginDate = json['current_login_date'];
    binaryPos = json['binary_pos'];
    idCard = json['id_card'];
    idStatus = json['id_status'];
    masterAccount = json['master_account'];
    issued = json['issued'];
    productType = json['product_type'];
    issueDate = json['issue_date'];
    adminRemark1 = json['admin_remark1'];
    withdrawStatus = json['withdraw_status'];
    fundStatus = json['fund_status'];
    idNo = json['id_no'];
    kycStatus = json['kyc_status'];
    updateStatus = json['update_status'];
    btcAdd = json['btc_add'];
    userAccNo = json['user_acc_no'];
    refLeg = json['ref_leg'];
    groupType = json['group_type'];
    tetherAddress = json['tether_address'];
    secret = json['secret'];
    twoWay = json['two_way'];
    rank = json['rank'];
    rankName = json['rank_name'];
    rankPer = json['rank_per'];
    gtbWalletAddress = json['gtb_wallet_address'];
    referralCode = json['referral_code'];
    accountType = json['account_type'];
    mainId = json['main_id'];
    refCount = json['ref_count'];
    autoshipStatus = json['autoship_status'];
    autoshipDate = json['autoship_date'];
    earningStatus = json['earning_status'];
    levelOpen = json['level_open'];
    userRoleId = json['user_role_id'];
    zoomUserId = json['zoom_user_id'];
    incomeMultiplier = json['income_multiplier'];
    deviceToken = json['device_token'];
  }
  String? id;
  String? userId;
  String? refId;
  String? nomId;
  String? username;
  String? password;
  String? firstName;
  String? lastName;
  String? email;
  String? address;
  String? city;
  String? state;
  String? country;
  String? phonecode;
  String? zipcode;
  String? telephone;
  String? adminStatus;
  String? userStatus;
  String? registrationDate;
  String? tCode;
  String? userPlan;
  String? designation;
  String? aboutus;
  String? dob;
  String? sex;
  String? image;
  String? accName;
  String? acNo;
  String? bankNm;
  String? branchNm;
  String? swiftCode;
  String? usdtAddress;
  String? trxAddress;
  String? userRankName;
  String? ts;
  String? merriedStatus;
  String? lastLoginDate;
  String? currentLoginDate;
  String? binaryPos;
  String? idCard;
  String? idStatus;
  String? masterAccount;
  String? issued;
  String? productType;
  String? issueDate;
  String? adminRemark1;
  String? withdrawStatus;
  String? fundStatus;
  String? idNo;
  String? kycStatus;
  String? updateStatus;
  String? btcAdd;
  String? userAccNo;
  String? refLeg;
  String? groupType;
  String? tetherAddress;
  String? secret;
  String? twoWay;
  String? rank;
  String? rankName;
  String? rankPer;
  String? gtbWalletAddress;
  String? referralCode;
  String? accountType;
  String? mainId;
  String? refCount;
  String? autoshipStatus;
  String? autoshipDate;
  String? earningStatus;
  String? levelOpen;
  String? userRoleId;
  dynamic zoomUserId;
  String? incomeMultiplier;
  String? deviceToken;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['user_id'] = userId;
    map['ref_id'] = refId;
    map['nom_id'] = nomId;
    map['username'] = username;
    map['password'] = password;
    map['first_name'] = firstName;
    map['last_name'] = lastName;
    map['email'] = email;
    map['address'] = address;
    map['city'] = city;
    map['state'] = state;
    map['country'] = country;
    map['phonecode'] = phonecode;
    map['zipcode'] = zipcode;
    map['telephone'] = telephone;
    map['admin_status'] = adminStatus;
    map['user_status'] = userStatus;
    map['registration_date'] = registrationDate;
    map['t_code'] = tCode;
    map['user_plan'] = userPlan;
    map['designation'] = designation;
    map['aboutus'] = aboutus;
    map['dob'] = dob;
    map['sex'] = sex;
    map['image'] = image;
    map['acc_name'] = accName;
    map['ac_no'] = acNo;
    map['bank_nm'] = bankNm;
    map['branch_nm'] = branchNm;
    map['swift_code'] = swiftCode;
    map['usdt_address'] = usdtAddress;
    map['trx_address'] = trxAddress;
    map['user_rank_name'] = userRankName;
    map['ts'] = ts;
    map['merried_status'] = merriedStatus;
    map['last_login_date'] = lastLoginDate;
    map['current_login_date'] = currentLoginDate;
    map['binary_pos'] = binaryPos;
    map['id_card'] = idCard;
    map['id_status'] = idStatus;
    map['master_account'] = masterAccount;
    map['issued'] = issued;
    map['product_type'] = productType;
    map['issue_date'] = issueDate;
    map['admin_remark1'] = adminRemark1;
    map['withdraw_status'] = withdrawStatus;
    map['fund_status'] = fundStatus;
    map['id_no'] = idNo;
    map['kyc_status'] = kycStatus;
    map['update_status'] = updateStatus;
    map['btc_add'] = btcAdd;
    map['user_acc_no'] = userAccNo;
    map['ref_leg'] = refLeg;
    map['group_type'] = groupType;
    map['tether_address'] = tetherAddress;
    map['secret'] = secret;
    map['two_way'] = twoWay;
    map['rank'] = rank;
    map['rank_name'] = rankName;
    map['rank_per'] = rankPer;
    map['gtb_wallet_address'] = gtbWalletAddress;
    map['referral_code'] = referralCode;
    map['account_type'] = accountType;
    map['main_id'] = mainId;
    map['ref_count'] = refCount;
    map['autoship_status'] = autoshipStatus;
    map['autoship_date'] = autoshipDate;
    map['earning_status'] = earningStatus;
    map['level_open'] = levelOpen;
    map['user_role_id'] = userRoleId;
    map['zoom_user_id'] = zoomUserId;
    map['income_multiplier'] = incomeMultiplier;
    map['device_token'] = deviceToken;
    return map;
  }

}