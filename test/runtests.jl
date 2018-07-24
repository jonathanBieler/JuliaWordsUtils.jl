using JuliaWordsUtils
@static if VERSION < v"0.7.0-DEV.2005"
    using Base.Test
else
    using Test
end

tostring(s,ij) = s[ij[1]:ij[2]]

# write your own tests here
@testset "select_word_backward" begin
    @test select_word_backward(3,"1234") == (1,3)
    @test select_word_backward(3,"1234",true) == (1,3)

    @test select_word_backward(10,"select_word_backward") == (1,10)
    @test select_word_backward(4,"1(34") == (3,4)

    @test select_word_backward(3,"A.B",true) == (3,3)
    @test select_word_backward(3,"A.B",false) == (1,3)

    @test select_word_backward(3,"@static") == (1,3)
end

@testset "get_word_backward" begin
    @test get_word_backward(4,"@static") == "@sta"

    @test get_word_backward(9,"CharArray(s,length(s))") == "CharArray"
    @test get_word_backward(10,"CharArray(s,length(s))") == "CharArray("
    @test get_word_backward(11,"CharArray(s,length(s))") == "s"
    @test get_word_backward(18,"CharArray(s,length(s))") == "length"

    @test get_word_backward(4,"]αβγ") == "αβγ"

    @test get_word_backward(5,"push!") == "push!"
    @test get_word_backward(5,"!push") == "push"

    @test get_word_backward(5,"push[") == "["
end

@testset "extend_word" begin

    @test extend_word(1, "CharArray(s,length(s))") == ("CharArray", 1, 9)
    @test extend_word(1, "A.B.C") == ("A", 1, 1)
    @test extend_word(2, "A.B.C") == (".", 2, 2)
    @test extend_word(3, "A.B.C") == ("B", 3, 3)
    @test extend_word(3, "A.B.C",false) == ("A.B.C", 1, 5)
end
