**free

ctl-opt dftactgrp(*no);

dcl-pi P2585;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P40.rpgleinc'
/copy 'qrpgleref/P1960.rpgleinc'
/copy 'qrpgleref/P2059.rpgleinc'

dcl-ds theTable extname('T1844') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1844 LIMIT 1;

theCharVar = 'Hello from P2585';
dsply theCharVar;
P40();
P1960();
P2059();
return;