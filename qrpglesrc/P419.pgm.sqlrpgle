**free

ctl-opt dftactgrp(*no);

dcl-pi P419;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P135.rpgleinc'
/copy 'qrpgleref/P266.rpgleinc'
/copy 'qrpgleref/P4.rpgleinc'

dcl-ds theTable extname('T344') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T344 LIMIT 1;

theCharVar = 'Hello from P419';
dsply theCharVar;
P135();
P266();
P4();
return;