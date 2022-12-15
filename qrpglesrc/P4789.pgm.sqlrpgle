**free

ctl-opt dftactgrp(*no);

dcl-pi P4789;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P485.rpgleinc'
/copy 'qrpgleref/P553.rpgleinc'
/copy 'qrpgleref/P1026.rpgleinc'

dcl-ds T1347 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1347 FROM T1347 LIMIT 1;

theCharVar = 'Hello from P4789';
dsply theCharVar;
P485();
P553();
P1026();
return;