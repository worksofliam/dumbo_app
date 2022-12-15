**free

ctl-opt dftactgrp(*no);

dcl-pi P1553;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P433.rpgleinc'
/copy 'qrpgleref/P1192.rpgleinc'
/copy 'qrpgleref/P710.rpgleinc'

dcl-ds theTable extname('T99') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T99 LIMIT 1;

theCharVar = 'Hello from P1553';
dsply theCharVar;
P433();
P1192();
P710();
return;