**free

ctl-opt dftactgrp(*no);

dcl-pi P3091;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2369.rpgleinc'
/copy 'qrpgleref/P1438.rpgleinc'
/copy 'qrpgleref/P1630.rpgleinc'

dcl-ds theTable extname('T632') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T632 LIMIT 1;

theCharVar = 'Hello from P3091';
dsply theCharVar;
P2369();
P1438();
P1630();
return;