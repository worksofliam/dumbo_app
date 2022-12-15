**free

ctl-opt dftactgrp(*no);

dcl-pi P3885;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P450.rpgleinc'
/copy 'qrpgleref/P1546.rpgleinc'
/copy 'qrpgleref/P118.rpgleinc'

dcl-ds theTable extname('T1076') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1076 LIMIT 1;

theCharVar = 'Hello from P3885';
dsply theCharVar;
P450();
P1546();
P118();
return;