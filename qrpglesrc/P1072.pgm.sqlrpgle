**free

ctl-opt dftactgrp(*no);

dcl-pi P1072;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P676.rpgleinc'
/copy 'qrpgleref/P459.rpgleinc'
/copy 'qrpgleref/P729.rpgleinc'

dcl-ds theTable extname('T77') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T77 LIMIT 1;

theCharVar = 'Hello from P1072';
dsply theCharVar;
P676();
P459();
P729();
return;