**free

ctl-opt dftactgrp(*no);

dcl-pi P2750;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2426.rpgleinc'
/copy 'qrpgleref/P1420.rpgleinc'
/copy 'qrpgleref/P2230.rpgleinc'

dcl-ds theTable extname('T1215') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1215 LIMIT 1;

theCharVar = 'Hello from P2750';
dsply theCharVar;
P2426();
P1420();
P2230();
return;