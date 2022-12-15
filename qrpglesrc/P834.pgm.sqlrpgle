**free

ctl-opt dftactgrp(*no);

dcl-pi P834;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P142.rpgleinc'
/copy 'qrpgleref/P86.rpgleinc'
/copy 'qrpgleref/P831.rpgleinc'

dcl-ds theTable extname('T1169') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1169 LIMIT 1;

theCharVar = 'Hello from P834';
dsply theCharVar;
P142();
P86();
P831();
return;