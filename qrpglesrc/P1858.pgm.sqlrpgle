**free

ctl-opt dftactgrp(*no);

dcl-pi P1858;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1522.rpgleinc'
/copy 'qrpgleref/P1601.rpgleinc'
/copy 'qrpgleref/P487.rpgleinc'

dcl-ds T226 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T226 FROM T226 LIMIT 1;

theCharVar = 'Hello from P1858';
dsply theCharVar;
P1522();
P1601();
P487();
return;