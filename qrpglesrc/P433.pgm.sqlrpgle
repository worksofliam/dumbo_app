**free

ctl-opt dftactgrp(*no);

dcl-pi P433;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P354.rpgleinc'
/copy 'qrpgleref/P155.rpgleinc'
/copy 'qrpgleref/P100.rpgleinc'

dcl-ds T567 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T567 FROM T567 LIMIT 1;

theCharVar = 'Hello from P433';
dsply theCharVar;
P354();
P155();
P100();
return;