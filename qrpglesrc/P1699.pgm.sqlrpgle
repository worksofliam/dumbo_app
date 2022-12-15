**free

ctl-opt dftactgrp(*no);

dcl-pi P1699;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1506.rpgleinc'
/copy 'qrpgleref/P814.rpgleinc'
/copy 'qrpgleref/P928.rpgleinc'

dcl-ds theTable extname('T585') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T585 LIMIT 1;

theCharVar = 'Hello from P1699';
dsply theCharVar;
P1506();
P814();
P928();
return;