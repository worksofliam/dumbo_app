**free

ctl-opt dftactgrp(*no);

dcl-pi P2085;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P154.rpgleinc'
/copy 'qrpgleref/P1248.rpgleinc'
/copy 'qrpgleref/P1450.rpgleinc'

dcl-ds theTable extname('T1349') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1349 LIMIT 1;

theCharVar = 'Hello from P2085';
dsply theCharVar;
P154();
P1248();
P1450();
return;