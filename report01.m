clear; % �ϐ��̃I�[���N���A

%% ���摜�̓��͋y�ѕ\��
ORG=imread('TDU.JPG'); % ���摜�̓���
imagesc(ORG); axis image; % �摜�̕\��
pause; % �ꎞ��~

%% �J���[�摜�𔒍��Z�W�摜�֕ϊ�
ORG=rgb2gray(ORG); % �J���[�摜�𔒍��Z�W�摜�֕ϊ�
imagesc(ORG); colormap(gray); colorbar;% �ϊ���̉摜��\��
imwrite(ORG, 'TDU_gray.JPG');% �ϊ���̉摜�ɖ��O�����ĕۑ�
pause; % �ꎞ��~

%% �O���[�o���������l���g�p�����C���[�W�� 2 �l��
I = imread('TDU_gray.JPG'); % �O���[�X�P�[�� �C���[�W�����[�N�X�y�[�X�ɓǂݎ��
BW = imbinarize(I);% �C���[�W���o�C�i�� �C���[�W�ɕϊ�

figure
imshowpair(I,BW,'montage')%���̃C���[�W�̉��Ƀo�C�i�� �o�[�W������\��
pause; % �ꎞ��~

%% �Ǐ��I�ȓK���������l�������g�p�����C���[�W�� 2 �l��
I = imread('TDU_gray.JPG'); % �O���[�X�P�[�� �C���[�W�����[�N�X�y�[�X�ɓǂݎ��
BW = imbinarize(I, 'adaptive'); % �O���[�X�P�[�� �C���[�W���o�C�i�� �C���[�W�ɕϊ�

figure
imshowpair(I,BW,'montage')% ���̃C���[�W�ƃo�C�i�� �o�[�W��������ׂĕ\��
pause; % �ꎞ��~

