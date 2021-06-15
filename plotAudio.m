function [] = plotAudio(audio,Fs)
    
    
    audiolength = length(audio)/4;    
    t = 1:1:audiolength;
    
    subplot(2,1,1);
    plot(t, audio(1:audiolength));
    xlabel('Time'); %横纵坐标
    ylabel('Audio Signal');
    title('原始音频文件信号幅度图');
    
    subplot(2,1,2);
    y = fft(audio);  %傅立叶变换
    y = 20*log(abs(y))/log(10);        %换算成dBW单位
    f = 0:(Fs/audiolength):Fs/2;     %转换横坐标以Hz为单位
    y = y(1:length(f));
    plot(f,y);
    xlabel('频率(Hz)'); 
    ylabel('功率(dBW)');
    title('原始音频文件信号频谱图');legend('Audio');

end