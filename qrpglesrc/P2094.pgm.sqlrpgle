**free

ctl-opt dftactgrp(*no);

dcl-pi P2094;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1018.rpgleinc'
/copy 'qrpgleref/P1512.rpgleinc'
/copy 'qrpgleref/P249.rpgleinc'

dcl-ds theTable extname('T610') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T610 LIMIT 1;

theCharVar = 'Hello from P2094';
dsply theCharVar;
P1018();
P1512();
P249();
return;