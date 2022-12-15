**free

ctl-opt dftactgrp(*no);

dcl-pi P2610;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P96.rpgleinc'
/copy 'qrpgleref/P1698.rpgleinc'
/copy 'qrpgleref/P2601.rpgleinc'

dcl-ds theTable extname('T335') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T335 LIMIT 1;

theCharVar = 'Hello from P2610';
dsply theCharVar;
P96();
P1698();
P2601();
return;