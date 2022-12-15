**free

ctl-opt dftactgrp(*no);

dcl-pi P2103;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P345.rpgleinc'
/copy 'qrpgleref/P1277.rpgleinc'
/copy 'qrpgleref/P983.rpgleinc'

dcl-ds theTable extname('T593') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T593 LIMIT 1;

theCharVar = 'Hello from P2103';
dsply theCharVar;
P345();
P1277();
P983();
return;