**free

ctl-opt dftactgrp(*no);

dcl-pi P4231;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P69.rpgleinc'
/copy 'qrpgleref/P2790.rpgleinc'
/copy 'qrpgleref/P1493.rpgleinc'

dcl-ds theTable extname('T599') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T599 LIMIT 1;

theCharVar = 'Hello from P4231';
dsply theCharVar;
P69();
P2790();
P1493();
return;