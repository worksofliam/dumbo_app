**free

ctl-opt dftactgrp(*no);

dcl-pi P791;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P22.rpgleinc'
/copy 'qrpgleref/P227.rpgleinc'
/copy 'qrpgleref/P729.rpgleinc'

dcl-ds theTable extname('T1485') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1485 LIMIT 1;

theCharVar = 'Hello from P791';
dsply theCharVar;
P22();
P227();
P729();
return;