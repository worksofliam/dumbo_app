**free

ctl-opt dftactgrp(*no);

dcl-pi P1582;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1516.rpgleinc'
/copy 'qrpgleref/P418.rpgleinc'
/copy 'qrpgleref/P976.rpgleinc'

dcl-ds theTable extname('T410') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T410 LIMIT 1;

theCharVar = 'Hello from P1582';
dsply theCharVar;
P1516();
P418();
P976();
return;