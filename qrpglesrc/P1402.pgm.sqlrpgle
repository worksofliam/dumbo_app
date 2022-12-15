**free

ctl-opt dftactgrp(*no);

dcl-pi P1402;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P863.rpgleinc'
/copy 'qrpgleref/P1156.rpgleinc'
/copy 'qrpgleref/P1182.rpgleinc'

dcl-ds theTable extname('T87') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T87 LIMIT 1;

theCharVar = 'Hello from P1402';
dsply theCharVar;
P863();
P1156();
P1182();
return;