**free

ctl-opt dftactgrp(*no);

dcl-pi P1160;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P709.rpgleinc'
/copy 'qrpgleref/P107.rpgleinc'
/copy 'qrpgleref/P978.rpgleinc'

dcl-ds theTable extname('T767') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T767 LIMIT 1;

theCharVar = 'Hello from P1160';
dsply theCharVar;
P709();
P107();
P978();
return;