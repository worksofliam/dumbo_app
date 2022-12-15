**free

ctl-opt dftactgrp(*no);

dcl-pi P1188;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P97.rpgleinc'
/copy 'qrpgleref/P1073.rpgleinc'
/copy 'qrpgleref/P179.rpgleinc'

dcl-ds T755 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T755 FROM T755 LIMIT 1;

theCharVar = 'Hello from P1188';
dsply theCharVar;
P97();
P1073();
P179();
return;