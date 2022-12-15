**free

ctl-opt dftactgrp(*no);

dcl-pi P1833;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1197.rpgleinc'
/copy 'qrpgleref/P247.rpgleinc'
/copy 'qrpgleref/P112.rpgleinc'

dcl-ds theTable extname('T1634') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1634 LIMIT 1;

theCharVar = 'Hello from P1833';
dsply theCharVar;
P1197();
P247();
P112();
return;