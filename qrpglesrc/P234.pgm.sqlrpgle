**free

ctl-opt dftactgrp(*no);

dcl-pi P234;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P72.rpgleinc'
/copy 'qrpgleref/P187.rpgleinc'
/copy 'qrpgleref/P213.rpgleinc'

dcl-ds theTable extname('T136') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T136 LIMIT 1;

theCharVar = 'Hello from P234';
dsply theCharVar;
P72();
P187();
P213();
return;