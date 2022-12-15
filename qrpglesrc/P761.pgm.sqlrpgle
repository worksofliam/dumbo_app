**free

ctl-opt dftactgrp(*no);

dcl-pi P761;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P367.rpgleinc'
/copy 'qrpgleref/P421.rpgleinc'
/copy 'qrpgleref/P700.rpgleinc'

dcl-ds T218 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T218 FROM T218 LIMIT 1;

theCharVar = 'Hello from P761';
dsply theCharVar;
P367();
P421();
P700();
return;