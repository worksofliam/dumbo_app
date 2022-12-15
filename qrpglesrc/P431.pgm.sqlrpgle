**free

ctl-opt dftactgrp(*no);

dcl-pi P431;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P428.rpgleinc'
/copy 'qrpgleref/P224.rpgleinc'
/copy 'qrpgleref/P1.rpgleinc'

dcl-ds theTable extname('T36') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T36 LIMIT 1;

theCharVar = 'Hello from P431';
dsply theCharVar;
P428();
P224();
P1();
return;