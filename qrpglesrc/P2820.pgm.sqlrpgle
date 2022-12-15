**free

ctl-opt dftactgrp(*no);

dcl-pi P2820;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2218.rpgleinc'
/copy 'qrpgleref/P1091.rpgleinc'
/copy 'qrpgleref/P2680.rpgleinc'

dcl-ds theTable extname('T125') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T125 LIMIT 1;

theCharVar = 'Hello from P2820';
dsply theCharVar;
P2218();
P1091();
P2680();
return;