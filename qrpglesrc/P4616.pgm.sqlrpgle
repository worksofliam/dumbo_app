**free

ctl-opt dftactgrp(*no);

dcl-pi P4616;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1812.rpgleinc'
/copy 'qrpgleref/P4614.rpgleinc'
/copy 'qrpgleref/P2718.rpgleinc'

dcl-ds T1125 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1125 FROM T1125 LIMIT 1;

theCharVar = 'Hello from P4616';
dsply theCharVar;
P1812();
P4614();
P2718();
return;