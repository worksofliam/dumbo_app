**free

ctl-opt dftactgrp(*no);

dcl-pi P3346;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P148.rpgleinc'
/copy 'qrpgleref/P1129.rpgleinc'
/copy 'qrpgleref/P339.rpgleinc'

dcl-ds theTable extname('T578') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T578 LIMIT 1;

theCharVar = 'Hello from P3346';
dsply theCharVar;
P148();
P1129();
P339();
return;