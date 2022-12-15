**free

ctl-opt dftactgrp(*no);

dcl-pi P4006;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2217.rpgleinc'
/copy 'qrpgleref/P3502.rpgleinc'
/copy 'qrpgleref/P3346.rpgleinc'

dcl-ds theTable extname('T580') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T580 LIMIT 1;

theCharVar = 'Hello from P4006';
dsply theCharVar;
P2217();
P3502();
P3346();
return;