**free

ctl-opt dftactgrp(*no);

dcl-pi P2718;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P130.rpgleinc'
/copy 'qrpgleref/P2187.rpgleinc'
/copy 'qrpgleref/P2225.rpgleinc'

dcl-ds theTable extname('T1171') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1171 LIMIT 1;

theCharVar = 'Hello from P2718';
dsply theCharVar;
P130();
P2187();
P2225();
return;