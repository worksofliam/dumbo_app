**free

ctl-opt dftactgrp(*no);

dcl-pi P1176;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P113.rpgleinc'
/copy 'qrpgleref/P23.rpgleinc'
/copy 'qrpgleref/P432.rpgleinc'

dcl-ds theTable extname('T77') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T77 LIMIT 1;

theCharVar = 'Hello from P1176';
dsply theCharVar;
P113();
P23();
P432();
return;