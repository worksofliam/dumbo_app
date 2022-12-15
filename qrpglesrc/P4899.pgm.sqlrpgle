**free

ctl-opt dftactgrp(*no);

dcl-pi P4899;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1055.rpgleinc'
/copy 'qrpgleref/P3946.rpgleinc'
/copy 'qrpgleref/P2947.rpgleinc'

dcl-ds theTable extname('T447') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T447 LIMIT 1;

theCharVar = 'Hello from P4899';
dsply theCharVar;
P1055();
P3946();
P2947();
return;