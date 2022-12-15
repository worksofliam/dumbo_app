**free

ctl-opt dftactgrp(*no);

dcl-pi P2920;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P261.rpgleinc'
/copy 'qrpgleref/P1706.rpgleinc'
/copy 'qrpgleref/P2793.rpgleinc'

dcl-ds theTable extname('T508') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T508 LIMIT 1;

theCharVar = 'Hello from P2920';
dsply theCharVar;
P261();
P1706();
P2793();
return;