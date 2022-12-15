**free

ctl-opt dftactgrp(*no);

dcl-pi P1253;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P76.rpgleinc'
/copy 'qrpgleref/P1242.rpgleinc'
/copy 'qrpgleref/P980.rpgleinc'

dcl-ds T1027 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1027 FROM T1027 LIMIT 1;

theCharVar = 'Hello from P1253';
dsply theCharVar;
P76();
P1242();
P980();
return;