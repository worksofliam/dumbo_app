**free

ctl-opt dftactgrp(*no);

dcl-pi P1588;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P589.rpgleinc'
/copy 'qrpgleref/P400.rpgleinc'
/copy 'qrpgleref/P972.rpgleinc'

dcl-ds theTable extname('T827') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T827 LIMIT 1;

theCharVar = 'Hello from P1588';
dsply theCharVar;
P589();
P400();
P972();
return;