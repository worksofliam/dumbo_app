**free

ctl-opt dftactgrp(*no);

dcl-pi P2585;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2414.rpgleinc'
/copy 'qrpgleref/P887.rpgleinc'
/copy 'qrpgleref/P2303.rpgleinc'

dcl-ds theTable extname('T222') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T222 LIMIT 1;

theCharVar = 'Hello from P2585';
dsply theCharVar;
P2414();
P887();
P2303();
return;