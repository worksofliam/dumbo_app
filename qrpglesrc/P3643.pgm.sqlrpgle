**free

ctl-opt dftactgrp(*no);

dcl-pi P3643;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2170.rpgleinc'
/copy 'qrpgleref/P346.rpgleinc'
/copy 'qrpgleref/P1967.rpgleinc'

dcl-ds theTable extname('T247') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T247 LIMIT 1;

theCharVar = 'Hello from P3643';
dsply theCharVar;
P2170();
P346();
P1967();
return;