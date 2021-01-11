unit dm006_PictersData;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ImgList, System.ImageList;

type
  TdmPicters = class(TDataModule)
    ilCommonPictures: TImageList;
    ilTreeState: TImageList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmPicters: TdmPicters;

implementation

{$R *.DFM}

end.
