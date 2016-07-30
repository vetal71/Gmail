unit UMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, imapsend, ssl_openssl;

type
  TMainForm = class(TForm)
    lbl1: TLabel;
    edtHost: TEdit;
    btnLogin: TButton;
    lbl2: TLabel;
    edtPort: TEdit;
    lbl3: TLabel;
    edtLogin: TEdit;
    lbl4: TLabel;
    edtPassword: TEdit;
    chkAutoTLS: TCheckBox;
    chkSSL: TCheckBox;
    mmoLog: TMemo;
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnLoginClick(Sender: TObject);
  private
    ImapClient: TIMAPSend;
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}

procedure TMainForm.FormDestroy(Sender: TObject);
begin
  ImapClient.Free;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  ImapClient := TIMAPSend.Create;
end;

procedure TMainForm.btnLoginClick(Sender: TObject);
begin
  if SameText(btnLogin.Caption, 'Подключение') then
    begin
      ImapClient.TargetHost := edtHost.Text;
      ImapClient.TargetPort := edtPort.Text;
      ImapClient.UserName   := edtLogin.Text;
      ImapClient.Password   := edtPassword.Text;
      ImapClient.AutoTLS    := chkAutoTLS.Checked;
      ImapClient.FullSSL    := chkSSL.Checked;
      if ImapClient.Login then begin
        btnLogin.Caption:='Отключение';

        // запрос количенства писем
        ImapClient.SelectFolder('INBOX');
        mmoLog.Lines.Add(Format('Всего писем: %d', [ImapClient.SelectedCount]));

      end else
       raise Exception.Create('Ошибка выполнения команды LOGIN');
    end
  else
    begin
      if ImapClient.Logout then
        btnLogin.Caption:='Подключение'
      else
        raise Exception.Create('Ошибка выполнения команды LOGOUT');
    end;
end;

 { teplo-obmen@tut.by }
 { ZaQXsW12 }

 { rkc-teplo@tut.by }
 { ZaQXsW12 }

end.
