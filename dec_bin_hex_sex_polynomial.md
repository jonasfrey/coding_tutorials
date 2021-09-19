
```python
# polynomials 
# dec: 243       =>       2        4        3
#                         2*10² +  4*10¹ +  3*10⁰     
#                         200   +  40    +  3        => 243
#
# bin: 11110011  =>       1        1        1        1        0        0        1        1    
#                         1*2⁷ +   1*2⁶ +   1*2⁵ +   1*2⁴ +   0*2³ +   0*2² +   1*2¹ +   1*2⁰
#                         128  +   64   +   32   +   16   +   0    +   0    +   2    +   1        => 243
# 
# hex: e3        =>       e(13)     3
#                         13*16¹ +  3*16⁰
#                         240    +  3        => 243
#
# sexagesimal:43 =>       4         3        
#                         4*60¹  +  3*60⁰
#                         240    +  3        => 243
# 
# tridecimal:159 =>       1         5        9
#                         1*13²  +  5*13¹  + 9*13⁰ 
#                         169    +  65     + 9        => 243
#                       
#            
```
# Explenation

so actually the number systems are polynomials (deutsch: polynom), with the relative base to the name (decimal base = 10, binary = base 2 , hexadecimal = base 16, tridecimal = base 13, etc... )

# polynomial
what is a polynomial ... <br>
polynomials are sums, (yess, also differences can be sums since `10 (+) - 15` minus equations have actually hidden plus signs in it)
polynomials are sums, that have N terms. each term consists of 
the numbers in the binary string are actually the coefficients

<div style="font-size:2rem">

<style>
    .mult{
        font-size:1.5rem;
    }
    b{
        padding:0 0.2rem;
    }
    .coefficient{ color: lightgreen}
    .base{ color: lightcoral}
    .exponent{ color: lightblue}
    .result{opacity:0.6}
    .flex{
        display:flex;
        width:100%;
    }
    .flex_100_o_80{
        flex: 12.5% 1 1; 
        position:relative; 
        display:flex;
        justify-content:center;
        align-content:center;
    }
    .plus{
        z-index:10;  
        position:absolute; 
        right: 0; 
        top:50%;
        transform:translate(0, -50%);
        font-size:1.4rem;
    }
</style>
<div class="coefficient">coefficient</div>
<div class="base">base</div>
<div class="exponent">exponent</div>
<div class="degree">degree (highest exponent)</div>

<div class="flex">
    <div class="flex_100_o_80">
        <b class="coefficient">1</b><b class="mult"> * </b><b class="base">2</b><sup class="exponent">7</sup> 
        <b class="plus">+</b>
    </div>
    <div class="flex_100_o_80">
        <b class="coefficient">1</b><b class="mult"> * </b><b class="base">2</b><sup class="exponent">6</sup>
        <b class="plus">+</b>
    </div>
    <div class="flex_100_o_80">
        <b class="coefficient">1</b><b class="mult"> * </b><b class="base">2</b><sup class="exponent">5</sup>
        <b class="plus">+</b>
    </div>
    <div class="flex_100_o_80">
        <b class="coefficient">1</b><b class="mult"> * </b><b class="base">2</b><sup class="exponent">4</sup>
        <b class="plus">+</b>
    </div>
    <div class="flex_100_o_80">
        <b class="coefficient">0</b><b class="mult"> * </b><b class="base">2</b><sup class="exponent">3</sup>
        <b class="plus">+</b>
    </div>
    <div class="flex_100_o_80">
        <b class="coefficient">0</b><b class="mult"> * </b><b class="base">2</b><sup class="exponent">2</sup>
        <b class="plus">+</b>
    </div>
    <div class="flex_100_o_80">
        <b class="coefficient">1</b><b class="mult"> * </b><b class="base">2</b><sup class="exponent">1</sup>
        <b class="plus">+</b>
    </div>
    <div class="flex_100_o_80">
        <b class="coefficient">1</b><b class="mult"> * </b><b class="base">2</b><sup class="exponent">0</sup>
    </div>
    <div class="flex_100_o_80">
        <b class="result"> = 243</b>
    </div>
</div>

<div class="flex">
    <div class="flex_100_o_80">
        <b class="coefficient">1</b><b class="mult"> * </b><b>128</b> 
        <b class="plus">+</b>
    </div>
    <div class="flex_100_o_80">
        <b class="coefficient">1</b><b class="mult"> * </b><b>64</b>
        <b class="plus">+</b>
    </div>
    <div class="flex_100_o_80">
        <b class="coefficient">1</b><b class="mult"> * </b><b>32</b>
        <b class="plus">+</b>
    </div>
    <div class="flex_100_o_80">
        <b class="coefficient">1</b><b class="mult"> * </b><b>16</b>
        <b class="plus">+</b>
    </div>
    <div class="flex_100_o_80">
        <b class="coefficient">0</b><b class="mult"> * </b><b>8</b>
        <b class="plus">+</b>
    </div>
    <div class="flex_100_o_80">
        <b class="coefficient">0</b><b class="mult"> * </b><b>4</b>
        <b class="plus">+</b>
    </div>
    <div class="flex_100_o_80">
        <b class="coefficient">1</b><b class="mult"> * </b><b>2</b>
        <b class="plus">+</b>
    </div>
    <div class="flex_100_o_80">
        <b class="coefficient">1</b><b class="mult"> * </b><b>1</b>
    </div>
    <div class="flex_100_o_80">
        <b class="result"> = 243</b>
    </div>
</div>

<div class="flex">
    <div class="flex_100_o_80">
        <b>128</b> 
        <b class="plus">+</b>
    </div>
    <div class="flex_100_o_80">
        <b>64</b>
        <b class="plus">+</b>
    </div>
    <div class="flex_100_o_80">
        <b>32</b>
        <b class="plus">+</b>
    </div>
    <div class="flex_100_o_80">
        <b>16</b>
        <b class="plus">+</b>
    </div>
    <div class="flex_100_o_80">
        <b>0</b>
        <b class="plus">+</b>
    </div>
    <div class="flex_100_o_80">
        <b>0</b>
        <b class="plus">+</b>
    </div>
    <div class="flex_100_o_80">
        <b>2</b>
        <b class="plus">+</b>
    </div>
    <div class="flex_100_o_80">
        <b>1</b>
    </div>
    <div class="flex_100_o_80">
        <b class="result"> = 243</b>
    </div>
</div>
</div>