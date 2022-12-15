**free

ctl-opt dftactgrp(*no);

dcl-pi P3322;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2741.rpgleinc'
/copy 'qrpgleref/P1781.rpgleinc'
/copy 'qrpgleref/P1416.rpgleinc'

dcl-ds theTable extname('T303') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T303 LIMIT 1;

theCharVar = 'Hello from P3322';
dsply theCharVar;
P2741();
P1781();
P1416();
return;