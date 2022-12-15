**free

ctl-opt dftactgrp(*no);

dcl-pi P2051;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P915.rpgleinc'
/copy 'qrpgleref/P1175.rpgleinc'
/copy 'qrpgleref/P340.rpgleinc'

dcl-ds T945 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T945 FROM T945 LIMIT 1;

theCharVar = 'Hello from P2051';
dsply theCharVar;
P915();
P1175();
P340();
return;