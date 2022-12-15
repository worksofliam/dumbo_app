**free

ctl-opt dftactgrp(*no);

dcl-pi P975;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P65.rpgleinc'
/copy 'qrpgleref/P846.rpgleinc'
/copy 'qrpgleref/P233.rpgleinc'

dcl-ds T1448 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1448 FROM T1448 LIMIT 1;

theCharVar = 'Hello from P975';
dsply theCharVar;
P65();
P846();
P233();
return;