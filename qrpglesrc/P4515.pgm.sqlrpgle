**free

ctl-opt dftactgrp(*no);

dcl-pi P4515;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P328.rpgleinc'
/copy 'qrpgleref/P2592.rpgleinc'
/copy 'qrpgleref/P1491.rpgleinc'

dcl-ds T985 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T985 FROM T985 LIMIT 1;

theCharVar = 'Hello from P4515';
dsply theCharVar;
P328();
P2592();
P1491();
return;