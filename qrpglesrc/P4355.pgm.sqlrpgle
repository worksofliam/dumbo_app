**free

ctl-opt dftactgrp(*no);

dcl-pi P4355;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P806.rpgleinc'
/copy 'qrpgleref/P37.rpgleinc'
/copy 'qrpgleref/P2770.rpgleinc'

dcl-ds theTable extname('T170') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T170 LIMIT 1;

theCharVar = 'Hello from P4355';
dsply theCharVar;
P806();
P37();
P2770();
return;