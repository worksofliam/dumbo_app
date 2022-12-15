**free

ctl-opt dftactgrp(*no);

dcl-pi P409;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P86.rpgleinc'
/copy 'qrpgleref/P366.rpgleinc'
/copy 'qrpgleref/P149.rpgleinc'

dcl-ds T522 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T522 FROM T522 LIMIT 1;

theCharVar = 'Hello from P409';
dsply theCharVar;
P86();
P366();
P149();
return;