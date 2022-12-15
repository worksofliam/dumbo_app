**free

ctl-opt dftactgrp(*no);

dcl-pi P1581;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P750.rpgleinc'
/copy 'qrpgleref/P1452.rpgleinc'
/copy 'qrpgleref/P1083.rpgleinc'

dcl-ds theTable extname('T803') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T803 LIMIT 1;

theCharVar = 'Hello from P1581';
dsply theCharVar;
P750();
P1452();
P1083();
return;