**free

ctl-opt dftactgrp(*no);

dcl-pi P3796;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P994.rpgleinc'
/copy 'qrpgleref/P2673.rpgleinc'
/copy 'qrpgleref/P1461.rpgleinc'

dcl-ds theTable extname('T506') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T506 LIMIT 1;

theCharVar = 'Hello from P3796';
dsply theCharVar;
P994();
P2673();
P1461();
return;