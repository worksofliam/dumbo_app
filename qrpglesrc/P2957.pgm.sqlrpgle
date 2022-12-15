**free

ctl-opt dftactgrp(*no);

dcl-pi P2957;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2175.rpgleinc'
/copy 'qrpgleref/P1610.rpgleinc'
/copy 'qrpgleref/P1066.rpgleinc'

dcl-ds T1805 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1805 FROM T1805 LIMIT 1;

theCharVar = 'Hello from P2957';
dsply theCharVar;
P2175();
P1610();
P1066();
return;