**free

ctl-opt dftactgrp(*no);

dcl-pi P2613;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1368.rpgleinc'
/copy 'qrpgleref/P943.rpgleinc'
/copy 'qrpgleref/P2476.rpgleinc'

dcl-ds theTable extname('T419') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T419 LIMIT 1;

theCharVar = 'Hello from P2613';
dsply theCharVar;
P1368();
P943();
P2476();
return;