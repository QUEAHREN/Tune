%[test, fs] = audioread('test.wav');
%plot(test) %可以画出声音的波形图

[audio,Fs] = audioread('eason.mp3');%读取音频
[audio2,Fs2] = audioread('cover.mp4');%读取音频

figure(1);
plotAudio(audio, Fs);
figure(2);
plotAudio(audio2, Fs2);






