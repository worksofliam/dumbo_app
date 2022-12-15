**free

ctl-opt dftactgrp(*no);

dcl-pi P2029;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P13.rpgleinc'
/copy 'qrpgleref/P740.rpgleinc'
/copy 'qrpgleref/P1341.rpgleinc'

dcl-ds theTable extname('T131') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T131 LIMIT 1;

theCharVar = 'Hello from P2029';
dsply theCharVar;
P13();
P740();
P1341();
return;