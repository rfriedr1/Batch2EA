program Batch2EA;

uses
  Forms,
  PrepEAmain in 'PrepEAmain.pas' {frmPrepEA};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmPrepEA, frmPrepEA);  //Display the form
  Application.Run;
end.
