**free

ctl-opt dftactgrp(*no);

dcl-pi P4559;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1963.rpgleinc'
/copy 'qrpgleref/P1656.rpgleinc'
/copy 'qrpgleref/P3725.rpgleinc'

dcl-ds theTable extname('T246') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T246 LIMIT 1;

theCharVar = 'Hello from P4559';
dsply theCharVar;
P1963();
P1656();
P3725();
return;