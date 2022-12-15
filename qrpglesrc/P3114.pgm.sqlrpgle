**free

ctl-opt dftactgrp(*no);

dcl-pi P3114;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P790.rpgleinc'
/copy 'qrpgleref/P366.rpgleinc'
/copy 'qrpgleref/P464.rpgleinc'

dcl-ds theTable extname('T1493') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1493 LIMIT 1;

theCharVar = 'Hello from P3114';
dsply theCharVar;
P790();
P366();
P464();
return;