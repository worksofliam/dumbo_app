**free

ctl-opt dftactgrp(*no);

dcl-pi P2174;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1548.rpgleinc'
/copy 'qrpgleref/P1664.rpgleinc'
/copy 'qrpgleref/P1123.rpgleinc'

dcl-ds theTable extname('T1291') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1291 LIMIT 1;

theCharVar = 'Hello from P2174';
dsply theCharVar;
P1548();
P1664();
P1123();
return;