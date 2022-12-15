**free

ctl-opt dftactgrp(*no);

dcl-pi P3597;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2541.rpgleinc'
/copy 'qrpgleref/P3594.rpgleinc'
/copy 'qrpgleref/P1391.rpgleinc'

dcl-ds theTable extname('T1473') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1473 LIMIT 1;

theCharVar = 'Hello from P3597';
dsply theCharVar;
P2541();
P3594();
P1391();
return;