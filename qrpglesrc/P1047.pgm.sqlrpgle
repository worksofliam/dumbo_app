**free

ctl-opt dftactgrp(*no);

dcl-pi P1047;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P278.rpgleinc'
/copy 'qrpgleref/P92.rpgleinc'
/copy 'qrpgleref/P465.rpgleinc'

dcl-ds theTable extname('T38') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T38 LIMIT 1;

theCharVar = 'Hello from P1047';
dsply theCharVar;
P278();
P92();
P465();
return;