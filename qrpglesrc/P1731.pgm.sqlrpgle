**free

ctl-opt dftactgrp(*no);

dcl-pi P1731;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1228.rpgleinc'
/copy 'qrpgleref/P341.rpgleinc'
/copy 'qrpgleref/P1249.rpgleinc'

dcl-ds theTable extname('T1113') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1113 LIMIT 1;

theCharVar = 'Hello from P1731';
dsply theCharVar;
P1228();
P341();
P1249();
return;