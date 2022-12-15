**free

ctl-opt dftactgrp(*no);

dcl-pi P3764;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P682.rpgleinc'
/copy 'qrpgleref/P187.rpgleinc'
/copy 'qrpgleref/P2385.rpgleinc'

dcl-ds theTable extname('T202') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T202 LIMIT 1;

theCharVar = 'Hello from P3764';
dsply theCharVar;
P682();
P187();
P2385();
return;