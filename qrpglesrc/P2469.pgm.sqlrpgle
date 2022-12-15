**free

ctl-opt dftactgrp(*no);

dcl-pi P2469;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P124.rpgleinc'
/copy 'qrpgleref/P162.rpgleinc'
/copy 'qrpgleref/P541.rpgleinc'

dcl-ds theTable extname('T133') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T133 LIMIT 1;

theCharVar = 'Hello from P2469';
dsply theCharVar;
P124();
P162();
P541();
return;