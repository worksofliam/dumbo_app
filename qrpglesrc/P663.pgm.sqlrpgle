**free

ctl-opt dftactgrp(*no);

dcl-pi P663;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P446.rpgleinc'
/copy 'qrpgleref/P392.rpgleinc'
/copy 'qrpgleref/P389.rpgleinc'

dcl-ds T1046 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1046 FROM T1046 LIMIT 1;

theCharVar = 'Hello from P663';
dsply theCharVar;
P446();
P392();
P389();
return;