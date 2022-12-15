**free

ctl-opt dftactgrp(*no);

dcl-pi P2012;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P5.rpgleinc'
/copy 'qrpgleref/P249.rpgleinc'
/copy 'qrpgleref/P164.rpgleinc'

dcl-ds theTable extname('T170') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T170 LIMIT 1;

theCharVar = 'Hello from P2012';
dsply theCharVar;
P5();
P249();
P164();
return;