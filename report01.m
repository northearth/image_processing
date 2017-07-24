clear; % 変数のオールクリア

%% 原画像の入力及び表示
ORG=imread('TDU.JPG'); % 原画像の入力
imagesc(ORG); axis image; % 画像の表示
pause; % 一時停止

%% カラー画像を白黒濃淡画像へ変換
ORG=rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換
imagesc(ORG); colormap(gray); colorbar;% 変換後の画像を表示
imwrite(ORG, 'TDU_gray.JPG');% 変換後の画像に名前をつけて保存
pause; % 一時停止

%% グローバルしきい値を使用したイメージの 2 値化
I = imread('TDU_gray.JPG'); % グレースケール イメージをワークスペースに読み取り
BW = imbinarize(I);% イメージをバイナリ イメージに変換

figure
imshowpair(I,BW,'montage')%元のイメージの横にバイナリ バージョンを表示
pause; % 一時停止

%% 局所的な適応しきい値処理を使用したイメージの 2 値化
I = imread('TDU_gray.JPG'); % グレースケール イメージをワークスペースに読み取り
BW = imbinarize(I, 'adaptive'); % グレースケール イメージをバイナリ イメージに変換

figure
imshowpair(I,BW,'montage')% 元のイメージとバイナリ バージョンを並べて表示
pause; % 一時停止

