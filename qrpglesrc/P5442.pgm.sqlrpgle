**free

ctl-opt dftactgrp(*no);

dcl-pi P5442;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2041.rpgleinc'
/copy 'qrpgleref/P2033.rpgleinc'
/copy 'qrpgleref/P3364.rpgleinc'

dcl-ds theTable extname('T966') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T966 LIMIT 1;

theCharVar = 'Hello from P5442';
dsply theCharVar;
P2041();
P2033();
P3364();
return;