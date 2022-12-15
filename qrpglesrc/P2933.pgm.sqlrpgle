**free

ctl-opt dftactgrp(*no);

dcl-pi P2933;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2567.rpgleinc'
/copy 'qrpgleref/P1020.rpgleinc'
/copy 'qrpgleref/P178.rpgleinc'

dcl-ds theTable extname('T628') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T628 LIMIT 1;

theCharVar = 'Hello from P2933';
dsply theCharVar;
P2567();
P1020();
P178();
return;