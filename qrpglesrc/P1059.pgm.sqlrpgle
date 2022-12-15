**free

ctl-opt dftactgrp(*no);

dcl-pi P1059;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P140.rpgleinc'
/copy 'qrpgleref/P70.rpgleinc'
/copy 'qrpgleref/P76.rpgleinc'

dcl-ds theTable extname('T505') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T505 LIMIT 1;

theCharVar = 'Hello from P1059';
dsply theCharVar;
P140();
P70();
P76();
return;