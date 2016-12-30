unit UClient;

interface

type
  TClient = class
    private
      // The data fields of this new class
      ClientID   : String;
      CallbackID : String;

    public
      // Properties to read these data values
      property UID : String
          read ClientID;
      property CID : String
          read CallbackID;

      // Constructor
      constructor Create(const ClientID   : String;
                         const CallbackID : String);
  end;

implementation

{ TClient }

constructor TClient.Create(const ClientID, CallbackID: String);
begin
  self.ClientID   := ClientID;
  self.CallbackID := CallbackID;
end;

end.
