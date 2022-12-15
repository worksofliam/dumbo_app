**free

ctl-opt dftactgrp(*no);

dcl-pi P3444;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3091.rpgleinc'
/copy 'qrpgleref/P2870.rpgleinc'
/copy 'qrpgleref/P2885.rpgleinc'

dcl-ds theTable extname('T1418') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1418 LIMIT 1;

theCharVar = 'Hello from P3444';
dsply theCharVar;
P3091();
P2870();
P2885();
return;