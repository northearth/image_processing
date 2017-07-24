clear; % 変数のオールクリア

%% 原画像の入力及び表示
ORG=imread('Document.JPG'); % 原画像の入力
imagesc(ORG); axis image; % 画像の表示
pause; % 一時停止

%% カラー画像を白黒濃淡画像へ変換
ORG=rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換
imagesc(ORG); colormap(gray); colorbar; % 変換後の画像を表示
imwrite(ORG, 'Document_gray.JPG');
pause; % 一時停止

%% 前景が背景より暗いイメージの 2 値化
I = imread('Document_gray.JPG'); %グレースケール イメージをワークスペースに読み取って表示
figure
imshow(I)
title('Original Image')
pause; % 一時停止

%% 適応しきい値処理を使用してイメージをバイナリ イメージに変換
BW = imbinarize(I,'adaptive','ForegroundPolarity','dark','Sensitivity',0.4); %適応しきい値処理を使用してイメージをバイナリ イメージに変換
pause; % 一時停止

%% イメージのバイナリ バージョンを表示
figure
imshow(BW) %イメージのバイナリ バージョンを表示
title('Binary Version of Image')