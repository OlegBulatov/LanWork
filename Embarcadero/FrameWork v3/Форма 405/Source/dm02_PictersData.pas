unit dm02_PictersData;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ImgList, System.ImageList;

type
  Tdm02_Picters = class(TDataModule)
    ilCommonPictures: TImageList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm02_Picters: Tdm02_Picters;

implementation

{$R *.DFM}

end.
