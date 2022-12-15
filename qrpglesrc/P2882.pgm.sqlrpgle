**free

ctl-opt dftactgrp(*no);

dcl-pi P2882;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P391.rpgleinc'
/copy 'qrpgleref/P349.rpgleinc'
/copy 'qrpgleref/P387.rpgleinc'

dcl-ds theTable extname('T95') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T95 LIMIT 1;

theCharVar = 'Hello from P2882';
dsply theCharVar;
P391();
P349();
P387();
return;