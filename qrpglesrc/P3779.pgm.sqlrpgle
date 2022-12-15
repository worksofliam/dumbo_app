**free

ctl-opt dftactgrp(*no);

dcl-pi P3779;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2238.rpgleinc'
/copy 'qrpgleref/P736.rpgleinc'
/copy 'qrpgleref/P241.rpgleinc'

dcl-ds theTable extname('T1854') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1854 LIMIT 1;

theCharVar = 'Hello from P3779';
dsply theCharVar;
P2238();
P736();
P241();
return;