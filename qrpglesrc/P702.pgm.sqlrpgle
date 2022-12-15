**free

ctl-opt dftactgrp(*no);

dcl-pi P702;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P339.rpgleinc'
/copy 'qrpgleref/P196.rpgleinc'
/copy 'qrpgleref/P372.rpgleinc'

dcl-ds T66 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T66 FROM T66 LIMIT 1;

theCharVar = 'Hello from P702';
dsply theCharVar;
P339();
P196();
P372();
return;