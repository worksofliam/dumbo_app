**free

ctl-opt dftactgrp(*no);

dcl-pi P321;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P161.rpgleinc'
/copy 'qrpgleref/P41.rpgleinc'
/copy 'qrpgleref/P293.rpgleinc'

dcl-ds T1101 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1101 FROM T1101 LIMIT 1;

theCharVar = 'Hello from P321';
dsply theCharVar;
P161();
P41();
P293();
return;