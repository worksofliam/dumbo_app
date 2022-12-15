**free

ctl-opt dftactgrp(*no);

dcl-pi P4663;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1254.rpgleinc'
/copy 'qrpgleref/P783.rpgleinc'
/copy 'qrpgleref/P2573.rpgleinc'

dcl-ds T859 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T859 FROM T859 LIMIT 1;

theCharVar = 'Hello from P4663';
dsply theCharVar;
P1254();
P783();
P2573();
return;