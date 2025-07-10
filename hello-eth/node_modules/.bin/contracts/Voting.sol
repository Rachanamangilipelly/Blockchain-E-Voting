pragma solidity >= 0.8.11 <= 0.8.11;
pragma experimental ABIEncoderV2;
//cheque solidity code
contract Voting {

      uint public partyCount = 0; 
    mapping(uint => party) public partyList; 
     struct party
     {
       string candidate;
       string partyname;
       string areaname;
       string symbol;       
     }
 
   // events 
   event partyCreated(uint indexed _partyId);

  
   //function  to save party details
   function createParty(string memory cn, string memory pn, string memory an, string memory sy) public {
      partyList[partyCount] = party(cn, pn, an, sy);
      emit partyCreated(partyCount);
      partyCount++;
    }

     //get Party count
    function getPartyCount()  public view returns (uint) {
          return  partyCount;
    }

    function getCandidateName(uint i) public view returns (string memory) {
        party memory chq = partyList[i];
	return chq.candidate;
    }

    function getPartyName(uint i) public view returns (string memory) {
        party memory chq = partyList[i];
	return chq.partyname;
    }

    function getArea(uint i) public view returns (string memory) {
        party memory chq = partyList[i];
	return chq.areaname;
    }

    function getSymbol(uint i) public view returns (string memory) {
        party memory chq = partyList[i];
	return chq.symbol;
    } 

    uint public votingCount = 0; 
    mapping(uint => voting) public votingList; 
     struct voting
     {
       string user;
       string party;
       string date;
       string candidate;       
     }
 
   // events 
   event voteCreated(uint indexed _voteId);

  
   //function  to save vote details
   function createVote(string memory usr, string memory party, string memory dd, string memory candidate) public {
      votingList[votingCount] = voting(usr, party, dd, candidate);
      emit voteCreated(votingCount);
      votingCount++;
    }

     //get Vote count
    function getVotingCount()  public view returns (uint) {
          return  votingCount;
    }

    function getUser(uint i) public view returns (string memory) {
        voting memory chq = votingList[i];
	return chq.user;
    }

    function getParty(uint i) public view returns (string memory) {
        voting memory chq = votingList[i];
	return chq.party;
    }

    function getDate(uint i) public view returns (string memory) {
        voting memory chq = votingList[i];
	return chq.date;
    }

    function getCandidate(uint i) public view returns (string memory) {
        voting memory chq = votingList[i];
	return chq.candidate;
    }     
       
    uint public userCount = 0; 
    mapping(uint => user) public usersList; 
     struct user
     {
       string username;
       string email;
       string password;
       string phone;
       string home_address;       
     }
 
   // events
 
   event userCreated(uint indexed _userId);
 
  function createUser(string memory _username, string memory _email, string memory _password, string memory _phone, string memory _address) public {
      usersList[userCount] = user(_username, _email, _password, _phone, _address);
      emit userCreated(userCount);
      userCount++;
    }

    
     //get user count
    function getUserCount()  public view returns (uint) {
          return  userCount;
    }

    function getUsername(uint i) public view returns (string memory) {
        user memory usr = usersList[i];
	return usr.username;
    }

    function getPassword(uint i) public view returns (string memory) {
        user memory usr = usersList[i];
	return usr.password;
    }

    function getEmail(uint i) public view returns (string memory) {
        user memory usr = usersList[i];
	return usr.email;
    }
}