**free

ctl-opt dftactgrp(*no);

dcl-pi P655;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P126.rpgleinc'
/copy 'qrpgleref/P88.rpgleinc'
/copy 'qrpgleref/P134.rpgleinc'

dcl-ds theTable extname('T543') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T543 LIMIT 1;

theCharVar = 'Hello from P655';
dsply theCharVar;
P126();
P88();
P134();
return;