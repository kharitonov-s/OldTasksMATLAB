function func2()
clc
disp('Hello, im func2!')
a=25;

    function func3() %вложенная функция
        disp('Hi, im func3!')
        disp(a)
    end

func3()
func4()

end

function func4()

disp('Hi, im func4!')

end


%вложенные функции