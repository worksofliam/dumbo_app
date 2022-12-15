**free

ctl-opt dftactgrp(*no);

dcl-pi P2022;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1774.rpgleinc'
/copy 'qrpgleref/P1984.rpgleinc'
/copy 'qrpgleref/P635.rpgleinc'

dcl-ds theTable extname('T1292') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1292 LIMIT 1;

theCharVar = 'Hello from P2022';
dsply theCharVar;
P1774();
P1984();
P635();
return;