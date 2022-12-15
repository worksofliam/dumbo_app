**free

ctl-opt dftactgrp(*no);

dcl-pi P2880;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P591.rpgleinc'
/copy 'qrpgleref/P781.rpgleinc'
/copy 'qrpgleref/P439.rpgleinc'

dcl-ds theTable extname('T879') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T879 LIMIT 1;

theCharVar = 'Hello from P2880';
dsply theCharVar;
P591();
P781();
P439();
return;