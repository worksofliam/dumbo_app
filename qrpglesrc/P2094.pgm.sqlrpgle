**free

ctl-opt dftactgrp(*no);

dcl-pi P2094;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P613.rpgleinc'
/copy 'qrpgleref/P2029.rpgleinc'
/copy 'qrpgleref/P466.rpgleinc'

dcl-ds theTable extname('T1095') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1095 LIMIT 1;

theCharVar = 'Hello from P2094';
dsply theCharVar;
P613();
P2029();
P466();
return;