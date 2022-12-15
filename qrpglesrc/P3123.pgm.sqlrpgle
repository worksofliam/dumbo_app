**free

ctl-opt dftactgrp(*no);

dcl-pi P3123;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P714.rpgleinc'
/copy 'qrpgleref/P181.rpgleinc'
/copy 'qrpgleref/P600.rpgleinc'

dcl-ds theTable extname('T527') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T527 LIMIT 1;

theCharVar = 'Hello from P3123';
dsply theCharVar;
P714();
P181();
P600();
return;