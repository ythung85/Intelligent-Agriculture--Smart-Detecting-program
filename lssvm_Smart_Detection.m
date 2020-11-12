clear;
clc;
t0=clock;
%A = importdata('C:\Users\Hung\Desktop\教授\智耕雲-供應鏈管理\1104\ori&2020 data\2020年資料.csv');
%origin_2020= dlmread('C:\Users\Hung\Desktop\教授\智耕雲-供應鏈管理\1104\ori&2020 data\2020年資料.csv');
%%
% Farmer list---------------------------------------------------------------------------------------------------
[ Df,Farmer] = xlsread('C:\Users\Hung\Desktop\教授\智耕雲-供應鏈管理\1104\ori&2020 data\2020年資料.csv','B5:B76');
%Original Farmer list  ------------------------------------------------------
Farmer_ori = Farmer;
%---2020_single-------------------------------------------------------------------------------------------------
xm_2020 = xlsread('C:\Users\Hung\Desktop\教授\智耕雲-供應鏈管理\1104\ori&2020 data\2020_double.csv','A4:B75');
ym_2020 = xlsread('C:\Users\Hung\Desktop\教授\智耕雲-供應鏈管理\1104\ori&2020 data\2020_double.csv','C4:D75');
%---2020_double-------------------------------------------------------------------------------------------------
% xm_2020 = xlsread('C:\Users\user\Desktop\Proj\AI(2)\1102\data\2020_double.csv','A4:B75');
% ym_2020 = xlsread('C:\Users\user\Desktop\Proj\AI(2)\1102\data\2020_double.csv','C4:D75');
% --------------------------------------------------------------------------------------------------------------
xm_2020_original = xm_2020;
ym_2020_original = ym_2020;
% ---01_single--------------------------------------------------------------------------------------------------
% get_data_ori=xlsread('C:\Users\user\Desktop\Proj\AI(2)\1025\recent five years\01.csv','J2:N514');
% get_data_checked=xlsread('C:\Users\user\Desktop\Proj\AI(2)\1025\recent five years\01.csv','T2:X514');
% ---02_single--------------------------------------------------------------------------------------------------
% get_data_ori=xlsread('C:\Users\user\Desktop\Proj\AI(2)\1025\recent five years\02a09.csv', 'J2:N514');
% get_data_checked=xlsread('C:\Users\user\Desktop\Proj\AI(2)\1025\recent five years\02a09.csv','Y2:AC514');
% ---03_single--------------------------------------------------------------------------------------------------
% get_data_ori=xlsread('C:\Users\user\Desktop\Proj\AI(2)\1025\recent five years\03.csv','J2:N514');
% get_data_checked=xlsread('C:\Users\user\Desktop\Proj\AI(2)\1025\recent five years\03.csv','T2:X514');
% ---04_single--------------------------------------------------------------------------------------------------
% get_data_ori=xlsread('C:\Users\user\Desktop\Proj\AI(2)\1025\recent five years\04a11.csv', 'J2:N514');
% get_data_checked=xlsread('C:\Users\user\Desktop\Proj\AI(2)\1025\recent five years\04a11.csv','Y2:AC514');
% ---05_single--------------------------------------------------------------------------------------------------
get_data_ori=xlsread('C:\Users\Hung\Desktop\教授\智耕雲-供應鏈管理\1104\recent five years data\12.csv','J2:S514');
get_data_checked=xlsread('C:\Users\Hung\Desktop\教授\智耕雲-供應鏈管理\1104\recent five years data\12.csv','Y2:AH514');
% ---06_single--------------------------------------------------------------------------------------------------
% get_data_ori=xlsread('C:\Users\user\Desktop\Proj\AI(2)\1025\recent five years\06.csv','J2:N514');
% get_data_checked=xlsread('C:\Users\user\Desktop\Proj\AI(2)\1025\recent five years\06.csv','T2:X514');
% ---07_double--------------------------------------------------------------------------------------------------
% get_data_ori=xlsread('C:\Users\user\Desktop\Proj\AI(2)\1025\recent five years\07.csv','E2:N601');
% get_data_checked=xlsread('C:\Users\user\Desktop\Proj\AI(2)\1025\recent five years\07.csv','O2:X601');
% ---08_double--------------------------------------------------------------------------------------------------
% get_data_ori=xlsread('C:\Users\user\Desktop\Proj\AI(2)\1025\recent five years\08.csv','E2:N601');
% get_data_checked=xlsread('C:\Users\user\Desktop\Proj\AI(2)\1025\recent five years\08.csv','T2:AC601');
% ---09_double--------------------------------------------------------------------------------------------------
% get_data_ori=xlsread('C:\Users\user\Desktop\Proj\AI(2)\1025\recent five years\02a09.csv', 'J2:S514');
% get_data_checked=xlsread('C:\Users\user\Desktop\Proj\AI(2)\1025\recent five years\02a09.csv', 'Y2:AH514');
% ---10_double--------------------------------------------------------------------------------------------------
% get_data_ori=xlsread('C:\Users\user\Desktop\Proj\AI(2)\1025\recent five years\10.csv','E2:N601');
% get_data_checked=xlsread('C:\Users\user\Desktop\Proj\AI(2)\1025\recent five years\10.csv','O2:X601');
% ---11_double--------------------------------------------------------------------------------------------------
% get_data_ori=xlsread('C:\Users\user\Desktop\Proj\AI(2)\1025\recent five years\04a11.csv', 'J2:S514');
% get_data_checked=xlsread('C:\Users\user\Desktop\Proj\AI(2) \1025\recent five years\04a11.csv', 'Y2:AH514');
% ---12_double--------------------------------------------------------------------------------------------------
% get_data_ori=xlsread('C:\Users\user\Desktop\Proj\AI(2)\1025\recent five years\12.csv', 'J2:S514');
% get_data_checked=xlsread('C:\Users\user\Desktop\Proj\AI(2)\1025\recent five years\12.csv', 'Y2:AH514');
% --------------------------------------------------------------------------------------------------------------
% ---播種人工_single---------------------------------------------------------------------------------------------
% get_data_ori=xlsread('C:\Users\user\Desktop\Proj\AI(2)\new data(1002)\02a09.csv', 'Y2:AH514');
% get_data_checked=xlsread('C:\Users\user\Desktop\Proj\AI(2)\new data(1002)\02a09.csv','BC2:BL601');
% ---收穫人工_single---------------------------------------------------------------------------------------------
% get_data_ori=xlsread('C:\Users\user\Desktop\Proj\AI(2)\new data(1002)\10.csv', 'O2:X601');
% get_data_checked=xlsread('C:\Users\user\Desktop\Proj\AI(2)\new data(1002)\10.csv','AI2:AR601');
% ---病蟲防治人工_single-----------------------------------------------------------------------------------------
% get_data_ori=xlsread('C:\Users\user\Desktop\Proj\AI(2)\new data(1002)\04a11.csv', 'Y2:AH514');
% get_data_checked=xlsread('C:\Users\user\Desktop\Proj\AI(2)\new data(1002)\04a11.csv','BC2:BL514');
% ---施肥人工_single---------------------------------------------------------------------------------------------
% get_data_ori=xlsread('C:\Users\user\Desktop\Proj\AI(2)\new data(1002)\12.csv', 'O2:X514');
% get_data_checked=xlsread('C:\Users\user\Desktop\Proj\AI(2)\new data(1002)\12.csv','AS2:BB514');
%----------------------------------------------------------------------------------------------------------------

[dim_1,dim_2]=size(get_data_ori);
index=[];
for i=2:dim_2-2
    if (get_data_ori(1,i+1) < get_data_ori(1,i))
        index=[index i+1];
    end
end
% index for indicating changing element
index=[1 index]; 

%%
% standardize the data by area
[dim11,dim22]=size(get_data_ori);
% for i=1:dim11
%     get_data_ori(i,2:end)=get_data_ori(i,2:end)./get_data_area(i);
% end
% get_data_ori(:,1)=[]; % removing the first column
% get_data_ori(1,:)=[]; % removing the first row

[dim111,dim222]=size(get_data_checked);
% for i=1:dim111
%    get_data_checked(i,2:end)= get_data_checked(i,2:end)./get_data_area();
% end
% get_data_checked(:,1)=[];
% get_data_checked(1,:)=[];

%Splitting an array into smaller unequal-sized arrays
[dim11,dim22]=size(get_data_ori);
index=[index dim22+1];

%%
id_k=1;
flag=2;
for i=1:dim22
    if i < index(flag)
         split_index(1,i)=id_k;
    else
        flag=flag+1;
        id_k=id_k+1;
        split_index(1,i)=id_k;
    end
end

get_data_ori_binned = arrayfun(@(idx) get_data_ori(:,split_index == idx), unique(split_index), 'UniformOutput', false);
get_data_checked_binned = arrayfun(@(idx) get_data_checked(:,split_index == idx), unique(split_index), 'UniformOutput', false);

% remove the NaN and convert to a column vector
[dim11,dim22]=size(index);
 j=1;
 m=0;
%---------------------
% ### input here ###
%---------------------
for i=1:2
    %-----------------------------
    % For 2010~2019
    %-----------------------------
    %delete year
    get_data_ori_binned{i}(1,:)=[]  ;
    
    get_data_ori_2=get_data_ori_binned{i};
    get_data_ori_2=get_data_ori_2(:); % convert an array to a column vector
    get_data_ori_2(isnan(get_data_ori_2)) = [] ; % remove the NaN 
   
    if j==1
     get_data_ori_3= get_data_ori_2;
    elseif j~=1
      get_data_ori_3= [ get_data_ori_3  get_data_ori_2];  % multiple column for input data
    end
    % delete year
    get_data_checked_binned{i}(1,:)=[]  ;
    
    get_data_checked_2=get_data_checked_binned{i};
    get_data_checked_2=get_data_checked_2(:);
    get_data_checked_2(isnan(get_data_checked_2)) = [] ;
    
     if j==1
     get_data_checked_3= get_data_checked_2;
    elseif j~=1
      get_data_checked_3= [ get_data_checked_3  get_data_checked_2];   % multiple column for input data
    end
    
    
    display('the current i')
    display(i)
    
    [dim101,dim102]=size(get_data_ori_3);
    
    hh=1;
    hhh = 1;
    %-----------------------------
    % For 2020
    %-----------------------------
    get_ori_2020_2 = xm_2020(:,i);
    get_ori_2020_2 = get_ori_2020_2(:); % convert an array to a column vector
    
    if j==1
     get_ori_2020_3 = get_ori_2020_2;
    elseif j~=1
      get_ori_2020_3 = [ get_ori_2020_3 get_ori_2020_2];  % multiple column for input data
    end
    
    get_che_2020_2 = ym_2020(:,i);
    get_che_2020_2 = get_che_2020_2(:); % convert an array to a column vector
    
    if j==1
     get_che_2020_3 = get_che_2020_2;
    elseif j~=1
      get_che_2020_3 = [ get_che_2020_3 get_che_2020_2];  % multiple column for input data
    end

    [dim101_2020,dim102_2020]=size(get_ori_2020_3);
    %-----------------------------
    % For 2010~2019
    %-----------------------------
    for kk=1:dim102
        iden=find(get_data_ori_3(:,kk) == get_data_checked_3(:,kk));
        % mm=isnan(get_data_ori);
        % nn=find(mm==1);
%         [dim1,dim2]=size(get_data_ori_2(:,j));
        vector=[1:dim101]';
        vector(iden(:,1))=[];
        not_iden=vector;
        answer(iden,1)=1;
        answer(not_iden,1)=0;
        
         if hh==1
             final_answer=  answer;
        elseif j~=1
             final_answer = [ final_answer answer];  
         end
        hh=hh+1;
    end   
    %-----------------------------
    % For 2020
    %-----------------------------
   
    for kk_2020=1:dim102_2020
        iden_2020 = find(get_ori_2020_3(:,kk_2020) == get_che_2020_3(:,kk_2020));
        
        vector_2020=[1:dim101_2020]';
        vector_2020(iden_2020(:,1))=[];
        not_iden_2020=vector_2020;
        answer_2020(iden_2020,1)=1;
        answer_2020(not_iden_2020,1)=0;
        
         if hhh==1
             final_answer_2020=  answer_2020;
        elseif j~=1
             final_answer_2020 = [final_answer_2020 answer_2020];  
         end
        hhh=hhh+1;
    end   
    clear not_iden;
    j=j+1;
    m=m+1;
end
% in case we just need answer of one column

%-----------------------------------------------------------
%single
%-----------------------------------------------------------
% [dim201, dim202]=size(final_answer);
% non_zero_ans=find(final_answer==m);
% vector=[1:dim201]';
% vector(non_zero_ans(:,1))=[];
% zero_ans=vector;
% final_answer(non_zero_ans,1)=1;
% final_answer(zero_ans,1)=0;
% singleanscorrect = sum(final_answer)
% ym=final_answer;
%-----------------------------------------------------------
%double
%-----------------------------------------------------------
single_ans=sum(final_answer,2);
[dim201, dim202]=size(single_ans);
non_zero_ans=find(single_ans==m);
vector=[1:dim201]';
vector(non_zero_ans(:,1))=[];
zero_ans=vector;
single_ans(non_zero_ans,1)=1;
single_ans(zero_ans,1)=0;
singleanscorrect = sum(single_ans)
ym=single_ans;

%-----------------------------
% For 2020
%-----------------------------
single_ans_2020 = sum(final_answer_2020,2);
[dim201_2020, dim202_2020]=size(single_ans_2020);
non_zero_ans_2020 = find(single_ans_2020==m);
vector_2020=[1:dim201_2020]';
vector_2020(non_zero_ans_2020(:,1))=[];
zero_ans_2020=vector_2020;
single_ans_2020(non_zero_ans_2020,1)=1;
single_ans_2020(zero_ans_2020,1)=0;
singleanscorrect_2020 = sum(single_ans_2020)
ym_2020 = single_ans_2020;


[N_data,dim2]=size(get_data_ori_3);
%%
%--------------------------------------------------
% my_lssvm code, icluding three steps
%--------------------------------------------------
xm = get_data_ori_3;
xm_2020 = get_ori_2020_3;

% find the mean and std of the correct data
find_correct_data = find(ym==1); % means we use the history data (which is corect) to locate the correct ones of predictions  

[id1,id2]=size(xm);
for i=1:id2
    mean_correct_data(:,i)=mean(xm(find_correct_data,i));
    aaaa =xm(find_correct_data,i);
    std_correct_data(:,i)=std(xm(find_correct_data,i));
end
%%
% STEP-1 locate the data that is within the mean +- 0.5 std range, 0.5 is a magic number
%--------------------------------------------------------------------------------
% For 2010~2019
%--------------------------------------------------------------------------------
magic_cov_i=1;
for magic_cov =  0.01:0.05:0.41
    maxlen=0;
    for i=1:id2
        [correct_d1,correct_d2] = find(xm(:,i) > mean_correct_data(:,i) - magic_cov*std_correct_data(:,i) ...
            & xm(:,i) < mean_correct_data(:,i) + magic_cov*std_correct_data(:,i));
        if i==1
            final_correct_d1=correct_d1(:,i);
        else
            maxlen = max(length(final_correct_d1),length(correct_d1)); % make the unequal vectors have the same length
            %revise = zeros(maxlen,
            final_correct_d1(end+1:maxlen,:) = 0;
            correct_d1(end+1:maxlen,:) = 0;
            final_correct_d1=[final_correct_d1 correct_d1];
        end
    end
    %-----------------------------------------------------------------------------
    for i=1
        if m == 1;
         final_position = final_correct_d1(:,i);
        else
             final_position = intersect(final_correct_d1(:,i),final_correct_d1(:,i+1));
        end
        if i+2 > m
            continue
        end
        final_position = intersect(final_position,final_correct_d1(:,i+2));
        if i+3 > m
            continue
        end
        final_position = intersect(final_position,final_correct_d1(:,i+3));
        if i+4 > m
            continue
        end
        final_position = intersect(final_position,final_correct_d1(:,i+4));
        if i+5 > m
            continue
        end
        final_position = intersect(final_position,final_correct_d1(:,i+5));
        if i+6 > m
            continue
        end
        final_position = intersect(final_position,final_correct_d1(:,i+6));
        if i+7 > m
            continue
        end
        final_position = intersect(final_position,final_correct_d1(:,i+7));
    end
    
    % save data that is closest to mean of correct answer and calculate its accuracy
    final_position_loop{1,magic_cov_i}=final_position;
    ym_close=ym(final_position);
    [yt_close1,yt_close2]=size(final_position);
    yt_close1_loop(1,magic_cov_i)=yt_close1;
    check_percentage_close=find(ym_close==1);
    [d1_close,d2_close]=size(check_percentage_close);
    display('correct_percentage_close_loop')
    correct_percentage_close_loop(1,magic_cov_i)=d1_close/yt_close1;
    true_negative_close_loop(1,magic_cov_i)=d1_close;
    false_negative_close_loop(1,magic_cov_i)=yt_close1-d1_close;
    display ('the magic_cov at first step')
    magic_cov_i=magic_cov_i+1;
end

 display('final position and max value in first step')
 [max_value_close max_location_close]=max(correct_percentage_close_loop);
 final_position=final_position_loop{1,max_location_close};
 correct_percentage_close=max_value_close;
 true_negative_close=true_negative_close_loop(1,max_location_close);
 false_negative_close=false_negative_close_loop(1,max_location_close);
 yt_close1= yt_close1_loop(1,max_location_close);

% delete row in input matrix and delete element in data answer
[bbb, dummy] = size(ym);
ym(final_position)=[];
xm(final_position,:)=[];
[N_data, dummy]=size(ym);

Step1 = abs(N_data - bbb)

%--------------------------------------------------------------------------------
% For 2020
%--------------------------------------------------------------------------------
for magic_cov =  0.01:0.05:0.41
    maxlen_2020=0;
    for i=1:id2
        [correct_e1,correct_e2] = find(xm_2020(:,i) > mean_correct_data(:,i) - magic_cov*std_correct_data(:,i) ...
            & xm_2020(:,i) < mean_correct_data(:,i) + magic_cov*std_correct_data(:,i));
        if i==1
            final_correct_e1=correct_e1(:,i);
        else
            maxlen_2020 = max(length(final_correct_e1),length(correct_e1)); % make the unequal vectors have the same length
            %revise = zeros(maxlen,
            final_correct_e1(end+1:maxlen_2020,:) = 0;
            correct_e1(end+1:maxlen_2020,:) = 0;
            final_correct_e1=[final_correct_e1 correct_e1];
        end
    end
    %-----------------------------------------------------------------------------
    for i=1
        if m == 1;
         final_position_2020 = final_correct_e1(:,i);
        else
             final_position_2020 = intersect(final_correct_e1(:,i),final_correct_e1(:,i+1));
        end
        if i+2 > m
            continue
        end
        final_position_2020 = intersect(final_position_2020,final_correct_e1(:,i+2));
        if i+3 > m
            continue
        end
        final_position_2020 = intersect(final_position_2020,final_correct_e1(:,i+3));
        if i+4 > m
            continue
        end
        final_position_2020 = intersect(final_position_2020,final_correct_e1(:,i+4));
        if i+5 > m
            continue
        end
        final_position_2020 = intersect(final_position_2020,final_correct_e1(:,i+5));
        if i+6 > m
            continue
        end
        final_position_2020 = intersect(final_position_2020,final_correct_e1(:,i+6));
        if i+7 > m
            continue
        end
        final_position_2020 = intersect(final_position_2020,final_correct_e1(:,i+7));
    end
    
    % save data that is closest to mean of correct answer and calculate its accuracy
    final_position_loop_2020{1,magic_cov_i} = final_position_2020;
    ym_2020_close = ym_2020(final_position_2020);
    [yt_2020_close1,yt_2020_close2] = size(final_position_2020);
    yt_close1_loop_2020(1,magic_cov_i) = yt_2020_close1;
    check_percentage_close_2020 = find(ym_2020_close==1);
    [d1_2020_close,d2_2020_close]=size(check_percentage_close_2020);
    display('correct_percentage_close_loop')
    correct_percentage_close_loop_2020(1,magic_cov_i) = d1_2020_close/yt_2020_close1;
    true_negative_close_loop_2020(1,magic_cov_i) = d1_2020_close;
    false_negative_close_loop_2020(1,magic_cov_i) = yt_2020_close1-d1_2020_close;
    display ('the magic_cov at first step')
    magic_cov_i=magic_cov_i+1;
end

 display('final position and max value in first step')
 [max_value_close_2020, max_location_close_2020]=max(correct_percentage_close_loop_2020);
 final_position_2020 = final_position_loop_2020{1,max_location_close_2020};
 correct_percentage_close_2020=max_value_close_2020;
 true_negative_close_2020=true_negative_close_loop_2020(1,max_location_close_2020);
 false_negative_close_2020=false_negative_close_loop_2020(1,max_location_close_2020);
 yt_2020_close1 = yt_close1_loop_2020(1,max_location_close_2020);

% delete row in input matrix and delete element in data answer
[ccc, fummy] = size(ym_2020);
ym_2020(final_position_2020)=[];
xm_2020(final_position_2020,:)=[];
[L_data, fummy]=size(ym_2020);
Step1_2020 = abs(L_data - ccc)

% Pick the Farmer
Farmer_corrlist = Farmer(final_position_2020);
Farmer(final_position_2020,:)=[];
%%
% STEP-2
% outluers-----------------------------------------------------------------------
%--------------------------------------------------------------------------------
% For 2010~2019
%--------------------------------------------------------------------------------
out_lier_id=1;
for step_2_magic = 0.0005:0.0025:0.05
% for step_2_magic = 0.05:0.05
    num_outliers = step_2_magic*N_data; % 0.05 is a magic number 
    % num_outliers=0.0005*N_datc; % 0.0005 indicates that step 2 is NOT included 
    [id1,id2]=size(xm);
    for i=1:id2
        [newX, X, outliers_idx] = outliers(xm(:,i), num_outliers);
        display('out_lier_id')
        out_lier_id
        if(i<2)
            a=outliers_idx;
            b = [0];
        else
            b=outliers_idx;
        end
    end
    
    for i=1:id2
        if i==1
            final_outlier=a;
        else
            final_outlier=[final_outlier;b]; 
        end
    end
    sort(final_outlier)
    % find(outlier(:,1)==outlier(:,2));

    % save outlier's correct answer and calculate its accuracy
    %ym_outlier=ym(final_outlier);
    final_position_outlier_loop{1,out_lier_id}=unique(final_outlier);
    ym_outlier=ym(unique(final_outlier));
    [yt_out1,yt_out2]=size(unique(final_outlier));
    yt_out1_loop(1,out_lier_id)=yt_out1;
    check_percentage_outlier=find(ym_outlier==0);
    [d1_outlier,d2_outlier]=size(check_percentage_outlier);
    correct_percentage_outlier_loop(1,out_lier_id)=d1_outlier/yt_out1;
    true_positive_outlier_loop(1,out_lier_id)=d1_outlier;
    false_positive_outlier_loop(1,out_lier_id)=yt_out1-d1_outlier;
    out_lier_id=out_lier_id+1;
    clear outliers_idx;
    clear final_outlier;
    clear outlier;
end
 display('final position and max value in the second step')
 [max_value_outlier, max_location_outlier]=max(correct_percentage_outlier_loop);
 final_position_outlier=final_position_outlier_loop{1,max_location_outlier};
 correct_percentage_outlier=max_value_outlier;
 true_positive_outlier=true_positive_outlier_loop(1,max_location_outlier);
 false_positive_outlier=false_positive_outlier_loop(1,max_location_outlier);
 yt_out1=yt_out1_loop(1,max_location_outlier);



% delete row in input matrix and delete element in data answer
[aaa, dummy] = size(ym);
ym(final_position_outlier)=[];
xm(final_position_outlier,:)=[];
[N_data, dummy]=size(ym);

%Number of outliers deleted in Step2-------------------
Step2 = abs(N_data - aaa)

%--------------------------------------------------------------------------------
% For 2020
%--------------------------------------------------------------------------------
out_lier_id_2020=1;
for step_2_magic_2020 = 0.0005:0.0025:0.05
% for step_2_magic = 0.05:0.05
    num_outliers_2020 = step_2_magic_2020*L_data; % 0.05 is a magic number 
    % num_outliers=0.0005*N_datc; % 0.0005 indicates that step 2 is NOT included 
    [id1_2020,id2_2020]=size(xm_2020);
    for i=1:id2_2020
        [newX, X, outliers_idx_2020] = outliers(xm_2020(:,i), num_outliers_2020);
        display('out_lier_id')
        out_lier_id_2020
        if(i<2)
            a_2020 = outliers_idx_2020;
            b_2020 = [0];
        else
            b_2020=outliers_idx_2020;
        end
    end
    
    for i=1:id2_2020
        if i==1
            final_outlier_2020 = a_2020;
        else
            final_outlier_2020=[final_outlier_2020;b_2020]; 
        end
    end
    sort(final_outlier_2020)
    % find(outlier(:,1)==outlier(:,2));

    % save outlier's correct answer and calculate its accuracy
    %ym_outlier=ym(final_outlier);
    final_position_outlier_loop_2020{1,out_lier_id_2020}=unique(final_outlier_2020);
    ym_outlier_2020 = ym_2020(unique(final_outlier_2020));
    [yt_2020_out1,yt_2020_out2] = size(unique(final_outlier_2020));
    yt_out1_loop_2020(1,out_lier_id_2020) = yt_2020_out1;
    check_percentage_outlier_2020 = find(ym_outlier_2020==0);
    [d1_outlier_2020,d2_outlier_2020] = size(check_percentage_outlier_2020);
    correct_percentage_outlier_loop_2020(1,out_lier_id_2020) = d1_outlier_2020/yt_2020_out1;
    true_positive_outlier_loop_2020(1,out_lier_id_2020)=d1_outlier_2020;
    false_positive_outlier_loop_2020(1,out_lier_id_2020)=yt_out1-d1_outlier_2020;
    out_lier_id_2020=out_lier_id_2020+1;
    clear outliers_idx;
    clear final_outlier;
    clear outlier;
end
 display('final position and max value in the second step')
 [max_value_outlier_2020, max_location_outlier_2020] = max(correct_percentage_outlier_loop_2020);
 final_position_outlier_2020 = final_position_outlier_loop_2020{1,max_location_outlier_2020};
 correct_percentage_outlier_2020 = max_value_outlier_2020;
 true_positive_outlier_2020 = true_positive_outlier_loop_2020(1,max_location_outlier_2020);
 false_positive_outlier_2020 = false_positive_outlier_loop_2020(1,max_location_outlier_2020);
 yt_out1_2020 = yt_out1_loop_2020(1,max_location_outlier_2020);

% delete row in input matrix and delete element in data answer
[ddd, jummy] = size(ym_2020);
ym_2020(final_position_outlier_2020)=[];
xm_2020(final_position_outlier_2020,:)=[];
[M_data, kummy]=size(ym_2020);

%Number of outliers deleted in Step2
Step2_2020 = abs(M_data - ddd)

% Pick the Farmer
Farmer_errlist = Farmer(final_position_outlier_2020);
second_error = Farmer(final_position_outlier_2020);

temp = 2.*ones(length(second_error),1);
Farmer(final_position_outlier_2020,:)=[];
%%
%------------------------------------------------------
%run 10 times------------------------------------------
kk = 1;
for y = 1:10
% ------------------------------------------------------------------------
% 0.8*data points are used for training or 0.7
% the remaining data points are used for testing
train_number=ceil(N_data);
% randomly selects the 20/10 points
[train_value,train_no]=sort( rand(size(xm,1),1) );
xm_train=xm( train_no(1:train_number,1), : );
ym_train=ym( train_no(1:train_number,1), : );

% xm_test=xm( train_no(train_number+1:size(xm,1),1), : );
xm_test = xm_2020;
% xm_test = [xm_2020(:,1) ; xm_2020(:,2)]
% ym_test=ym( train_no(train_number+1:size(xm,1),1), : );
ym_test = ym_2020;

New_test_num = length(xm_test)
yt_test=[];
%%
% STEP-3 lssvm
%---------------------------------------------------------------------------------------------------------------------------
% type : 'classification' (only two possible outcomes for y) ,
% 'function estimation' (infinite possible outcomes for y, similar to regression)
% optimization : 'simplex' (gradient-based), 'gridsearch' (simulated annealing), 'linesearch' (only good for 1-D problem)
% cost function : 'leaveoneoutlssvm' , 'crossvalidatelssvm' (k-fold)
% how to use : 'leaveoneoutlssvm',{'mse'}
% how to use: 'crossvalidatelssvm',{10,'mse'} 10=k=number of groups
% cost measures of risiduals : 'misclass' (for classification) , 'mse' (for function estimation)
% find the two parameter values for SVM
%------------------------------------------
[gam,sig2] = tunelssvm({xm_train,ym_train,'function estimation',[],[],'RBF_kernel'},'simplex', ...
'crossvalidatelssvm',{10,'mse'});
% training or you can consider this is a process to build the SVM model
[alpha,b] = trainlssvm({xm_train,ym_train,'function estimation',gam,sig2,'RBF_kernel'});
% calculate the estimated values for y
yt_test = simlssvm({xm_train,ym_train,'function estimation',gam,sig2,'RBF_kernel'},{alpha,b}, xm_test);
% ------------------------------------------------------------------------
%%
% calculate the error
MAPE_error = 100 * mean( abs((ym_test-yt_test)./ym_test) );
ym_test_mean = repmat(mean(ym_test),New_test_num,1);
%R2 below is coefficient of multiple determination and defined as
%1-SSe/SSt, where SSe is sum of squares due to residual (error)
%SSt is the total sum of squares
R2_error= 1- (sum((ym_test-yt_test).^2) ./ sum((ym_test-ym_test_mean).^2));
mape=MAPE_error;
r2=R2_error;

% overall correct percentage 
check_percentage=find(ym_test==yt_test);
[d1,d2]=size(check_percentage);
[d3,d4]=size(ym_test);
correct_percentage=d1/d3;

%confusion matrix
confusion_tar_corre=find(ym_test==0); % 
confusion_pre_corre=find(yt_test==0);
[ida] = ismember(confusion_tar_corre,confusion_pre_corre,'rows');
true_positive=sum(ida);
false_negative=size(confusion_tar_corre,1)-true_positive;

confusion_tar_incorre=find(ym_test==1);
confusion_pre_incorre=find(yt_test==1);
[ida] = ismember(confusion_tar_incorre,confusion_pre_incorre,'rows');
true_negative=sum(ida);
false_positive=size(confusion_tar_incorre,1)-true_negative;

%---------------------------------

display('final outcomes - THE SECOND TIME')
sen_1=true_positive+true_positive_outlier_2020;
sen_2=true_positive+true_positive_outlier_2020+false_negative+false_negative_close_2020;
spec_1=true_negative+true_negative_close_2020;
spec_2=true_negative+true_negative_close_2020+false_positive+false_positive_outlier_2020;
preci_1=true_positive+true_positive_outlier_2020;
preci_2=true_positive+true_positive_outlier_2020+false_positive+false_positive_outlier_2020;
negative_1=true_negative+true_negative_close_2020;
negative_2=true_negative+true_negative_close_2020+false_negative+false_negative_close_2020;
accuracy_1=true_negative+true_negative_close_2020+true_positive+true_positive_outlier_2020;
accuracy_2=true_negative+true_negative_close_2020+true_positive+true_positive_outlier_2020+false_negative+false_negative_close_2020+false_positive+false_positive_outlier_2020;
TP=sen_1;
TN=spec_1;
FN=negative_2-TN;
FP=preci_2-TP;
TOTAL_CONFU_NUMBER=true_negative+true_negative_close_2020+true_positive+true_positive_outlier_2020+false_negative+false_negative_close_2020+false_positive+false_positive_outlier_2020;
sensitivity=(sen_1)/(sen_2);
specificity= (spec_1)/(spec_2);
precision=(preci_1)/(preci_2);
negative_predictive_value=(negative_1)/(negative_2);
accuracy=(accuracy_1)/(accuracy_2);
FOR_THE_RECORD=[accuracy ;sensitivity; specificity; precision;negative_predictive_value]
FOR_THE_RECORD_CONFU=[TOTAL_CONFU_NUMBER;TP;FN;FP;TN]
display('correct_percentage_close_2020')
correct_percentage_close_2020
FOR_THE_RECORD_STEPS=[yt_2020_close1; correct_percentage_close_2020;yt_out1_2020;correct_percentage_outlier_2020;New_test_num;correct_percentage]
%Average ---------------------------------
sen(kk,:)=sensitivity;
spec(kk,:)=specificity;
prec(kk,:)=precision;
nega(kk,:)=negative_predictive_value;
accu(kk,:)=accuracy;
kk = kk+1;
end

% Pick the Farmer
for i = 1:length(Farmer)
    if yt_test(i) == 0
        Farmer_errlist = [Farmer_errlist ; Farmer(i)];
    end
end
third_error = setdiff(Farmer_errlist, second_error);

Farmer_errlist_col = Farmer_errlist 
SVM_farmer = abs(length(yt_test) - sum(yt_test))

FOR_THE_RECORD_FINAL=[mean(accu); mean(sen); mean(spec); mean(prec); mean(nega)]
FOR_THE_RECORD_FINAL_COV=[std(accu)/mean(accu); std(sen)/mean(sen); std(spec)/mean(spec); std(prec)/mean(prec); std(nega)/mean(nega)]

Farmer_ori= string(Farmer_ori);
second_error = string(second_error);
third_error = string(third_error);

% Display when do the error be detected
for i = 1:length(Farmer_ori)
    Farmer_ori(i,2) = 'Correct';
    for j = 1:length(second_error)
        if Farmer_ori(i) == second_error(j)
            Farmer_ori(i,2) = '2';
        end
    end
    
    for k = 1:length(third_error)
        if Farmer_ori(i) == third_error(k)
            Farmer_ori(i,2) = '3';
        end
    end
end
%%
%writematrix(Farmer_ori,'C:\Users\Hung\Desktop\Error_Farmer.csv')
A = char(Farmer_ori(:,1) + ',' + Farmer_ori(:,2));
writematrix(A,'C:\Users\Hung\Desktop\Error_Farmer.csv')
T=table(dt.rowheaders,dt.data(:,2),'VariableNames',{'FoldeName','Number'});
