**free

ctl-opt dftactgrp(*no);

dcl-pi P4635;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3587.rpgleinc'
/copy 'qrpgleref/P2024.rpgleinc'
/copy 'qrpgleref/P2300.rpgleinc'

dcl-ds theTable extname('T1367') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1367 LIMIT 1;

theCharVar = 'Hello from P4635';
dsply theCharVar;
P3587();
P2024();
P2300();
return;