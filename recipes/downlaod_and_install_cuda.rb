#install cuda 9.1.85

bash 'create cuda toolkit' do
  user 'root'
  cwd '/opt/source'
  code <<-EOH
  wget https://developer.nvidia.com/compute/cuda/9.1/Prod/local_installers/cuda-repo-ubuntu1604-9-1-local_9.1.85-1_amd64
  wget https://developer.nvidia.com/compute/cuda/9.1/Prod/patches/3/cuda-repo-ubuntu1604-9-1-local-cublas-performance-update-3_1.0-1_amd64
  sudo dpkg -i cuda-repo*
  sudo apt-key add /var/cuda-repo-<version>/7fa2af80.pub
  sudo apt-get update -y 
  sudo apt-get install cuda cuda-libraries-9-1 -y
  EOH
end
