**free

ctl-opt dftactgrp(*no);

dcl-pi P2302;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P174.rpgleinc'
/copy 'qrpgleref/P1721.rpgleinc'
/copy 'qrpgleref/P465.rpgleinc'

dcl-ds theTable extname('T79') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T79 LIMIT 1;

theCharVar = 'Hello from P2302';
dsply theCharVar;
P174();
P1721();
P465();
return;