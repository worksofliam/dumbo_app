**free

ctl-opt dftactgrp(*no);

dcl-pi P3068;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P485.rpgleinc'
/copy 'qrpgleref/P2951.rpgleinc'
/copy 'qrpgleref/P1509.rpgleinc'

dcl-ds theTable extname('T774') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T774 LIMIT 1;

theCharVar = 'Hello from P3068';
dsply theCharVar;
P485();
P2951();
P1509();
return;