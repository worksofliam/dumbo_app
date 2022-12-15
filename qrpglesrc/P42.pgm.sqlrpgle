**free

ctl-opt dftactgrp(*no);

dcl-pi P42;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3.rpgleinc'
/copy 'qrpgleref/P28.rpgleinc'
/copy 'qrpgleref/P1.rpgleinc'

dcl-ds theTable extname('T619') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T619 LIMIT 1;

theCharVar = 'Hello from P42';
dsply theCharVar;
P3();
P28();
P1();
return;