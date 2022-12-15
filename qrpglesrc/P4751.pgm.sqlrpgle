**free

ctl-opt dftactgrp(*no);

dcl-pi P4751;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4663.rpgleinc'
/copy 'qrpgleref/P3929.rpgleinc'
/copy 'qrpgleref/P2864.rpgleinc'

dcl-ds theTable extname('T817') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T817 LIMIT 1;

theCharVar = 'Hello from P4751';
dsply theCharVar;
P4663();
P3929();
P2864();
return;