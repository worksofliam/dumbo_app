**free

ctl-opt dftactgrp(*no);

dcl-pi P4381;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3881.rpgleinc'
/copy 'qrpgleref/P3771.rpgleinc'
/copy 'qrpgleref/P1674.rpgleinc'

dcl-ds theTable extname('T88') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T88 LIMIT 1;

theCharVar = 'Hello from P4381';
dsply theCharVar;
P3881();
P3771();
P1674();
return;