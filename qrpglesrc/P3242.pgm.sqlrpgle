**free

ctl-opt dftactgrp(*no);

dcl-pi P3242;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2114.rpgleinc'
/copy 'qrpgleref/P699.rpgleinc'
/copy 'qrpgleref/P3145.rpgleinc'

dcl-ds theTable extname('T148') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T148 LIMIT 1;

theCharVar = 'Hello from P3242';
dsply theCharVar;
P2114();
P699();
P3145();
return;