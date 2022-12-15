**free

ctl-opt dftactgrp(*no);

dcl-pi P1229;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2.rpgleinc'
/copy 'qrpgleref/P274.rpgleinc'
/copy 'qrpgleref/P313.rpgleinc'

dcl-ds theTable extname('T1561') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1561 LIMIT 1;

theCharVar = 'Hello from P1229';
dsply theCharVar;
P2();
P274();
P313();
return;