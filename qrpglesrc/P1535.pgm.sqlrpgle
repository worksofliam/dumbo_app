**free

ctl-opt dftactgrp(*no);

dcl-pi P1535;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1489.rpgleinc'
/copy 'qrpgleref/P554.rpgleinc'
/copy 'qrpgleref/P988.rpgleinc'

dcl-ds theTable extname('T657') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T657 LIMIT 1;

theCharVar = 'Hello from P1535';
dsply theCharVar;
P1489();
P554();
P988();
return;