**free

ctl-opt dftactgrp(*no);

dcl-pi P3205;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1765.rpgleinc'
/copy 'qrpgleref/P1439.rpgleinc'
/copy 'qrpgleref/P1032.rpgleinc'

dcl-ds theTable extname('T843') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T843 LIMIT 1;

theCharVar = 'Hello from P3205';
dsply theCharVar;
P1765();
P1439();
P1032();
return;