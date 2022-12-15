**free

ctl-opt dftactgrp(*no);

dcl-pi P3661;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2536.rpgleinc'
/copy 'qrpgleref/P2820.rpgleinc'
/copy 'qrpgleref/P513.rpgleinc'

dcl-ds theTable extname('T1694') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1694 LIMIT 1;

theCharVar = 'Hello from P3661';
dsply theCharVar;
P2536();
P2820();
P513();
return;