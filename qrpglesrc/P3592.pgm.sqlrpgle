**free

ctl-opt dftactgrp(*no);

dcl-pi P3592;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2540.rpgleinc'
/copy 'qrpgleref/P2171.rpgleinc'
/copy 'qrpgleref/P2616.rpgleinc'

dcl-ds theTable extname('T733') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T733 LIMIT 1;

theCharVar = 'Hello from P3592';
dsply theCharVar;
P2540();
P2171();
P2616();
return;