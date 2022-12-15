**free

ctl-opt dftactgrp(*no);

dcl-pi P1631;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P223.rpgleinc'
/copy 'qrpgleref/P1450.rpgleinc'
/copy 'qrpgleref/P1585.rpgleinc'

dcl-ds theTable extname('T706') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T706 LIMIT 1;

theCharVar = 'Hello from P1631';
dsply theCharVar;
P223();
P1450();
P1585();
return;