**free

ctl-opt dftactgrp(*no);

dcl-pi P1941;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P177.rpgleinc'
/copy 'qrpgleref/P504.rpgleinc'
/copy 'qrpgleref/P1144.rpgleinc'

dcl-ds theTable extname('T1589') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1589 LIMIT 1;

theCharVar = 'Hello from P1941';
dsply theCharVar;
P177();
P504();
P1144();
return;