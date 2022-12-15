**free

ctl-opt dftactgrp(*no);

dcl-pi P3594;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2772.rpgleinc'
/copy 'qrpgleref/P1155.rpgleinc'
/copy 'qrpgleref/P1031.rpgleinc'

dcl-ds theTable extname('T440') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T440 LIMIT 1;

theCharVar = 'Hello from P3594';
dsply theCharVar;
P2772();
P1155();
P1031();
return;