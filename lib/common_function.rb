module CommonFunc
  # def CommonFunc.get_url route
  #   YAML.load_file("#{TEST_DATA_DIR}/test_data.yml")["urls"][route]
  # end

  def wait_for_element(ele,timeout=REFRESH_RESULT_TIMEOUT)
 # debugger
    refreshTimeout=timeout
    until ele.exists? == true or refreshTimeout==0 do
      sleep 1
      refreshTimeout=refreshTimeout-1
      p "wait_for #{refreshTimeout}"
    end
  end

  def wait_for_property(ele,pro,val,timeout=REFRESH_RESULT_TIMEOUT)
    # debugger
    refreshTimeout=timeout
    until ele.attribute(pro) == val or refreshTimeout==0 do
      sleep 1
      refreshTimeout=refreshTimeout-1
      p "wait_for #{refreshTimeout}"
      p ele.attribute(pro)
    end
  end

end