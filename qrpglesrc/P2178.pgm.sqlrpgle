**free

ctl-opt dftactgrp(*no);

dcl-pi P2178;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1073.rpgleinc'
/copy 'qrpgleref/P290.rpgleinc'
/copy 'qrpgleref/P289.rpgleinc'

dcl-ds T348 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T348 FROM T348 LIMIT 1;

theCharVar = 'Hello from P2178';
dsply theCharVar;
P1073();
P290();
P289();
return;