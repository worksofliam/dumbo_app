**free

ctl-opt dftactgrp(*no);

dcl-pi P353;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P23.rpgleinc'
/copy 'qrpgleref/P263.rpgleinc'
/copy 'qrpgleref/P250.rpgleinc'

dcl-ds theTable extname('T732') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T732 LIMIT 1;

theCharVar = 'Hello from P353';
dsply theCharVar;
P23();
P263();
P250();
return;