function mark=Mark(filename,num)
%����ǩΪ1��2��3��ֳ���������Ϊ0��markȡֵ��0��1��2��3
%[mark_new,mark]=Mark('phantom_1.0mm_normal_crisp.rawb',90);
fp=fopen(filename);                                                                     
temp=fread(fp, 181 * 217 * 181);
image=reshape(temp, 181 * 217, 181);   
images=image(:, num);
images=reshape(images, 181, 217);
mark_data=images;
fclose(fp);
mark=zeros(181,217);
%����0��1��2��3���ǩ���ڵ�������ó�����������0
for i=1:181
    for j=1:217
        if (mark_data(i,j)==1)||(mark_data(i,j)==2)||(mark_data(i,j)==3)
            mark(i,j)=mark_data(i,j);
        else
            mark(i,j)=0;
        end
    end
end