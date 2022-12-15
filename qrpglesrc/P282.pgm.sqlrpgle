**free

ctl-opt dftactgrp(*no);

dcl-pi P282;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P179.rpgleinc'
/copy 'qrpgleref/P1.rpgleinc'
/copy 'qrpgleref/P244.rpgleinc'

dcl-ds T1865 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1865 FROM T1865 LIMIT 1;

theCharVar = 'Hello from P282';
dsply theCharVar;
P179();
P1();
P244();
return;