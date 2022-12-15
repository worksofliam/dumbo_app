**free

ctl-opt dftactgrp(*no);

dcl-pi P2586;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P307.rpgleinc'
/copy 'qrpgleref/P559.rpgleinc'
/copy 'qrpgleref/P1458.rpgleinc'

dcl-ds theTable extname('T640') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T640 LIMIT 1;

theCharVar = 'Hello from P2586';
dsply theCharVar;
P307();
P559();
P1458();
return;