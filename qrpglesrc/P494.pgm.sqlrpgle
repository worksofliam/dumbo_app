**free

ctl-opt dftactgrp(*no);

dcl-pi P494;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P0.rpgleinc'
/copy 'qrpgleref/P450.rpgleinc'
/copy 'qrpgleref/P31.rpgleinc'

dcl-ds theTable extname('T595') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T595 LIMIT 1;

theCharVar = 'Hello from P494';
dsply theCharVar;
P0();
P450();
P31();
return;