**free

ctl-opt dftactgrp(*no);

dcl-pi P2657;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P339.rpgleinc'
/copy 'qrpgleref/P2385.rpgleinc'
/copy 'qrpgleref/P597.rpgleinc'

dcl-ds theTable extname('T663') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T663 LIMIT 1;

theCharVar = 'Hello from P2657';
dsply theCharVar;
P339();
P2385();
P597();
return;