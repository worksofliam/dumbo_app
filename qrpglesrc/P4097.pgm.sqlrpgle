**free

ctl-opt dftactgrp(*no);

dcl-pi P4097;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1198.rpgleinc'
/copy 'qrpgleref/P693.rpgleinc'
/copy 'qrpgleref/P831.rpgleinc'

dcl-ds theTable extname('T19') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T19 LIMIT 1;

theCharVar = 'Hello from P4097';
dsply theCharVar;
P1198();
P693();
P831();
return;