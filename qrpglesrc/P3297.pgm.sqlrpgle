**free

ctl-opt dftactgrp(*no);

dcl-pi P3297;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2091.rpgleinc'
/copy 'qrpgleref/P2279.rpgleinc'
/copy 'qrpgleref/P2847.rpgleinc'

dcl-ds theTable extname('T639') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T639 LIMIT 1;

theCharVar = 'Hello from P3297';
dsply theCharVar;
P2091();
P2279();
P2847();
return;