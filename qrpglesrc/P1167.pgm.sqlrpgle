**free

ctl-opt dftactgrp(*no);

dcl-pi P1167;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P570.rpgleinc'
/copy 'qrpgleref/P739.rpgleinc'
/copy 'qrpgleref/P407.rpgleinc'

dcl-ds theTable extname('T563') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T563 LIMIT 1;

theCharVar = 'Hello from P1167';
dsply theCharVar;
P570();
P739();
P407();
return;