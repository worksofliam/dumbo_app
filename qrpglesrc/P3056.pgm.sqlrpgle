**free

ctl-opt dftactgrp(*no);

dcl-pi P3056;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P818.rpgleinc'
/copy 'qrpgleref/P2738.rpgleinc'
/copy 'qrpgleref/P1043.rpgleinc'

dcl-ds theTable extname('T192') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T192 LIMIT 1;

theCharVar = 'Hello from P3056';
dsply theCharVar;
P818();
P2738();
P1043();
return;