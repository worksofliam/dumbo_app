**free

ctl-opt dftactgrp(*no);

dcl-pi P769;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P708.rpgleinc'
/copy 'qrpgleref/P395.rpgleinc'
/copy 'qrpgleref/P617.rpgleinc'

dcl-ds theTable extname('T1457') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1457 LIMIT 1;

theCharVar = 'Hello from P769';
dsply theCharVar;
P708();
P395();
P617();
return;