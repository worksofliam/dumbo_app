**free

ctl-opt dftactgrp(*no);

dcl-pi P747;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P92.rpgleinc'
/copy 'qrpgleref/P648.rpgleinc'
/copy 'qrpgleref/P341.rpgleinc'

dcl-ds theTable extname('T108') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T108 LIMIT 1;

theCharVar = 'Hello from P747';
dsply theCharVar;
P92();
P648();
P341();
return;