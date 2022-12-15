**free

ctl-opt dftactgrp(*no);

dcl-pi P94;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P32.rpgleinc'
/copy 'qrpgleref/P76.rpgleinc'
/copy 'qrpgleref/P1.rpgleinc'

dcl-ds theTable extname('T234') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T234 LIMIT 1;

theCharVar = 'Hello from P94';
dsply theCharVar;
P32();
P76();
P1();
return;