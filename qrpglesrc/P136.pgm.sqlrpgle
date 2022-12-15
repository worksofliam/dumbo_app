**free

ctl-opt dftactgrp(*no);

dcl-pi P136;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P82.rpgleinc'
/copy 'qrpgleref/P76.rpgleinc'
/copy 'qrpgleref/P44.rpgleinc'

dcl-ds T842 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T842 FROM T842 LIMIT 1;

theCharVar = 'Hello from P136';
dsply theCharVar;
P82();
P76();
P44();
return;