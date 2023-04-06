package App::dirstrata ;  
our $VERSION = '0.030' ; 
our $DATE = '2023-04-061T23:26+09:00' ; 

=encoding utf8

=head1 NAME

App::dirstrata -- gives minute hierarchial information about a directory using a triangular matrix.

=head1 SYNOPSIS

This module provides a Unix-like command `F<dirstrata>'.

=head1 DESCRIPTION

   指定されたディレクトリから、i階層下にあるディレクトリで、さらにそこからj階層下まで
  何かディレクトリを持つものが何個あるのかを、行列状に示す。縦方向がiで、横方向がjに対応。
   シンボリックリンクのディレクトリは辿らない。存在する場合は、その数を出力する。
   dirname が指定されない場合は、現行ディレクトリが指定されたものと見なされる。

 出力表の解説 :
   1. 出力表において、「+」と表記された列は、i階層の合計値を示す。「++」は累積和。
   2. 最も左の列は i = 1,2,3.. を示す。最初の列の内、数は j = 0,1,2,..,(i-1)を示す。
   3. j=0 (対応する各ディレクトリは子ディレクトリを持たない)は黄色で示した。
      その部分に対応するディレクトリの例が、最も右の列に黄色で示される。
      (ディレクトリの例は、ランダムに抽出される。再現性の確保のため -s でシードが指定可能。)
   4. マゼンタ(紫)色で、各i(基点からのディレクトリ深さ)に対応するシンボリックリンファイルの
      ディレクトリの個数を示す。
   5. オプションの-fの指定により、plainファイルの個数を数える。
      出力表の最後の行の2列目が、指定ディレクトリ全体の plainファイルの総数と一致する。

=head1 NOTE

  This software is on the way to develop. There are many issues tracked in GitHub
  and the author wants to resolve them. 

=head1 AUTHOR

下野寿之 Toshiyuki SHIMONO <bin4tsv@gmail.com> 統計数理研究所 外来研究員

=head1 COPYRIGHT AND LICENSE

Copyright (c) 2023 Toshiyuki SHIMONO. All rights reserved.
This program is free software; you can redistribute it and/or
modify it under the same terms as Perl itself.

=cut

1 ;
