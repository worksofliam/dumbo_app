**free

ctl-opt dftactgrp(*no);

dcl-pi P599;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P109.rpgleinc'
/copy 'qrpgleref/P473.rpgleinc'
/copy 'qrpgleref/P17.rpgleinc'

dcl-ds theTable extname('T1869') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1869 LIMIT 1;

theCharVar = 'Hello from P599';
dsply theCharVar;
P109();
P473();
P17();
return;