**free

ctl-opt dftactgrp(*no);

dcl-pi P736;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P606.rpgleinc'
/copy 'qrpgleref/P132.rpgleinc'
/copy 'qrpgleref/P366.rpgleinc'

dcl-ds T486 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T486 FROM T486 LIMIT 1;

theCharVar = 'Hello from P736';
dsply theCharVar;
P606();
P132();
P366();
return;