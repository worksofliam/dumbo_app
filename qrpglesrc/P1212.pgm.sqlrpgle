**free

ctl-opt dftactgrp(*no);

dcl-pi P1212;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P662.rpgleinc'
/copy 'qrpgleref/P886.rpgleinc'
/copy 'qrpgleref/P902.rpgleinc'

dcl-ds theTable extname('T798') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T798 LIMIT 1;

theCharVar = 'Hello from P1212';
dsply theCharVar;
P662();
P886();
P902();
return;