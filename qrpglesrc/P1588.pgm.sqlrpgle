**free

ctl-opt dftactgrp(*no);

dcl-pi P1588;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P226.rpgleinc'
/copy 'qrpgleref/P1437.rpgleinc'
/copy 'qrpgleref/P29.rpgleinc'

dcl-ds theTable extname('T806') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T806 LIMIT 1;

theCharVar = 'Hello from P1588';
dsply theCharVar;
P226();
P1437();
P29();
return;