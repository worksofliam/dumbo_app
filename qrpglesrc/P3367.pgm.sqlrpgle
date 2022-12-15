**free

ctl-opt dftactgrp(*no);

dcl-pi P3367;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1048.rpgleinc'
/copy 'qrpgleref/P55.rpgleinc'
/copy 'qrpgleref/P817.rpgleinc'

dcl-ds theTable extname('T409') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T409 LIMIT 1;

theCharVar = 'Hello from P3367';
dsply theCharVar;
P1048();
P55();
P817();
return;