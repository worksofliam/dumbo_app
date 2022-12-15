**free

ctl-opt dftactgrp(*no);

dcl-pi P1272;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P890.rpgleinc'
/copy 'qrpgleref/P595.rpgleinc'
/copy 'qrpgleref/P715.rpgleinc'

dcl-ds theTable extname('T1209') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1209 LIMIT 1;

theCharVar = 'Hello from P1272';
dsply theCharVar;
P890();
P595();
P715();
return;