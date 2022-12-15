**free

ctl-opt dftactgrp(*no);

dcl-pi P3240;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P304.rpgleinc'
/copy 'qrpgleref/P1647.rpgleinc'
/copy 'qrpgleref/P601.rpgleinc'

dcl-ds theTable extname('T1394') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1394 LIMIT 1;

theCharVar = 'Hello from P3240';
dsply theCharVar;
P304();
P1647();
P601();
return;