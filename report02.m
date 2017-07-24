clear; % �ϐ��̃I�[���N���A

%% ���摜�̓��͋y�ѕ\��
ORG=imread('Document.JPG'); % ���摜�̓���
imagesc(ORG); axis image; % �摜�̕\��
pause; % �ꎞ��~

%% �J���[�摜�𔒍��Z�W�摜�֕ϊ�
ORG=rgb2gray(ORG); % �J���[�摜�𔒍��Z�W�摜�֕ϊ�
imagesc(ORG); colormap(gray); colorbar; % �ϊ���̉摜��\��
imwrite(ORG, 'Document_gray.JPG');
pause; % �ꎞ��~

%% �O�i���w�i���Â��C���[�W�� 2 �l��
I = imread('Document_gray.JPG'); %�O���[�X�P�[�� �C���[�W�����[�N�X�y�[�X�ɓǂݎ���ĕ\��
figure
imshow(I)
title('Original Image')
pause; % �ꎞ��~

%% �K���������l�������g�p���ăC���[�W���o�C�i�� �C���[�W�ɕϊ�
BW = imbinarize(I,'adaptive','ForegroundPolarity','dark','Sensitivity',0.4); %�K���������l�������g�p���ăC���[�W���o�C�i�� �C���[�W�ɕϊ�
pause; % �ꎞ��~

%% �C���[�W�̃o�C�i�� �o�[�W������\��
figure
imshow(BW) %�C���[�W�̃o�C�i�� �o�[�W������\��
title('Binary Version of Image')