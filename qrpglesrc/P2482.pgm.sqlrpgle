**free

ctl-opt dftactgrp(*no);

dcl-pi P2482;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P285.rpgleinc'
/copy 'qrpgleref/P548.rpgleinc'
/copy 'qrpgleref/P1365.rpgleinc'

dcl-ds theTable extname('T1716') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1716 LIMIT 1;

theCharVar = 'Hello from P2482';
dsply theCharVar;
P285();
P548();
P1365();
return;