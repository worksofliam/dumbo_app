**free

ctl-opt dftactgrp(*no);

dcl-pi P3115;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2995.rpgleinc'
/copy 'qrpgleref/P591.rpgleinc'
/copy 'qrpgleref/P1697.rpgleinc'

dcl-ds theTable extname('T1011') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1011 LIMIT 1;

theCharVar = 'Hello from P3115';
dsply theCharVar;
P2995();
P591();
P1697();
return;