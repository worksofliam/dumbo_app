**free

ctl-opt dftactgrp(*no);

dcl-pi P2218;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P157.rpgleinc'
/copy 'qrpgleref/P1458.rpgleinc'
/copy 'qrpgleref/P1000.rpgleinc'

dcl-ds theTable extname('T467') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T467 LIMIT 1;

theCharVar = 'Hello from P2218';
dsply theCharVar;
P157();
P1458();
P1000();
return;