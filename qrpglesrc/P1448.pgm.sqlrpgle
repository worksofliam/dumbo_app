**free

ctl-opt dftactgrp(*no);

dcl-pi P1448;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P711.rpgleinc'
/copy 'qrpgleref/P851.rpgleinc'
/copy 'qrpgleref/P961.rpgleinc'

dcl-ds theTable extname('T1707') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1707 LIMIT 1;

theCharVar = 'Hello from P1448';
dsply theCharVar;
P711();
P851();
P961();
return;