unit uMain;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Objects, FMX.ListBox;

type
  TfrmMain = class(TForm)
    pnlHeader: TPanel;
    btnOpenImage: TButton;
    btnClose: TButton;
    ComboBox: TComboBox;
    ListBoxItem1: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    ListBoxItem3: TListBoxItem;
    Panel1: TPanel;
    lblImageName: TLabel;
    lblImagePath: TLabel;
    imgFile: TImage;
    procedure FormCreate(Sender: TObject);
    procedure btnOpenImageClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure ComboBoxChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;
  imagePath,imageName:string;


implementation

{$R *.fmx}
uses System.IOUtils;

procedure TfrmMain.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmMain.btnOpenImageClick(Sender: TObject);
var path:string;
begin
  //este método carga la imagen en el componente TImage
  imgFile.Bitmap.LoadFromFile(imagePath + PathDelim + imageName);
  lblImageName.Text:=imageName;
  lblImagePath.Text:=imagePath+imageName;
end;

procedure TfrmMain.ComboBoxChange(Sender: TObject);
begin
  imageName:=ComboBox.Selected.Text;

end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  imageName := 'barco.jpg';
  imagePath:=TPath.GetDocumentsPath;
  comboBox.ItemIndex:=0;
end;

end.
