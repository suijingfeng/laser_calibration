function generate_data(sick_path_1, sick_path_2, ...
    sick_baud, num_scans, test_num, pose_num)
%==========================================================================
%==========================================================================
%
%  File: generate_data.m
%  Auth: Justin Cosentinum
%  Date: 08 July 2013
%
%  In:   sick_path_1    - Sick device path
%        sick_path_2    - Sick device path
%        sick_baud_rate - Desired baud rate of comm session
%        num_scans      - Desired number of laser scans
%        test_num       - The test number (for file-writing; > 0)
%        pose_num       - The pose number (for file-writing; > 0)
%
%  Out:
%  
%  Desc: 
%
%        Usage:   generate_data()
%        Example: generate_data()
%
%==========================================================================

% Check for input params
narginchk(6,6)

% Generate laser scans from each lidar
[l1_scans_x, l1_scans_y] = generate_scan(sick_path_1, sick_baud, ... 
    num_scans, test_num, 'l1', pose_num);
% [l2_scans_x, l2_scans_y] = generate_scan(sick_path_2, sick_baud, ...
%     num_scans, test_num, 'l2', pose_num);

% Calculate average points from n lidar scans
l1_avg = average_scans(l1_scans_x, l1_scans_y, num_scans, test_num, ...
    'l1', pose_num);
% l2_avg = average_scans(l2_scans_x, l2_scans_y, num_scans, test_num, ...
%     'l2', pose_num);

% Plot Results
figure('Name','Lidar 1'); hold on; grid on;
plot(l1_avg(1,:), l1_avg(2,:),'r*')

% figure('Name','Lidar 2'); hold on; grid on;
% plot(l2_avg(1,:), l2_avg(2,:),'g*')

end % function generate_data
