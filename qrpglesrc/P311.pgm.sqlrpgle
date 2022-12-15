**free

ctl-opt dftactgrp(*no);

dcl-pi P311;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P265.rpgleinc'
/copy 'qrpgleref/P82.rpgleinc'
/copy 'qrpgleref/P78.rpgleinc'

dcl-ds theTable extname('T421') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T421 LIMIT 1;

theCharVar = 'Hello from P311';
dsply theCharVar;
P265();
P82();
P78();
return;