**free

ctl-opt dftactgrp(*no);

dcl-pi P5066;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2133.rpgleinc'
/copy 'qrpgleref/P3697.rpgleinc'
/copy 'qrpgleref/P3465.rpgleinc'

dcl-ds theTable extname('T1209') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1209 LIMIT 1;

theCharVar = 'Hello from P5066';
dsply theCharVar;
P2133();
P3697();
P3465();
return;