**free

ctl-opt dftactgrp(*no);

dcl-pi P1269;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P522.rpgleinc'
/copy 'qrpgleref/P462.rpgleinc'
/copy 'qrpgleref/P962.rpgleinc'

dcl-ds theTable extname('T260') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T260 LIMIT 1;

theCharVar = 'Hello from P1269';
dsply theCharVar;
P522();
P462();
P962();
return;