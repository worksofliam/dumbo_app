**free

ctl-opt dftactgrp(*no);

dcl-pi P3534;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2578.rpgleinc'
/copy 'qrpgleref/P3100.rpgleinc'
/copy 'qrpgleref/P2876.rpgleinc'

dcl-ds theTable extname('T603') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T603 LIMIT 1;

theCharVar = 'Hello from P3534';
dsply theCharVar;
P2578();
P3100();
P2876();
return;