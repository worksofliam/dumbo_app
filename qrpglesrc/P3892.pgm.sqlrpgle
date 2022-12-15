**free

ctl-opt dftactgrp(*no);

dcl-pi P3892;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P150.rpgleinc'
/copy 'qrpgleref/P1465.rpgleinc'
/copy 'qrpgleref/P1367.rpgleinc'

dcl-ds theTable extname('T818') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T818 LIMIT 1;

theCharVar = 'Hello from P3892';
dsply theCharVar;
P150();
P1465();
P1367();
return;