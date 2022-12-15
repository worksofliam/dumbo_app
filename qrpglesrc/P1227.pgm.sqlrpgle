**free

ctl-opt dftactgrp(*no);

dcl-pi P1227;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P538.rpgleinc'
/copy 'qrpgleref/P780.rpgleinc'
/copy 'qrpgleref/P12.rpgleinc'

dcl-ds T1018 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1018 FROM T1018 LIMIT 1;

theCharVar = 'Hello from P1227';
dsply theCharVar;
P538();
P780();
P12();
return;