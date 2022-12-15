**free

ctl-opt dftactgrp(*no);

dcl-pi P2953;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P587.rpgleinc'
/copy 'qrpgleref/P1636.rpgleinc'
/copy 'qrpgleref/P2880.rpgleinc'

dcl-ds theTable extname('T130') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T130 LIMIT 1;

theCharVar = 'Hello from P2953';
dsply theCharVar;
P587();
P1636();
P2880();
return;