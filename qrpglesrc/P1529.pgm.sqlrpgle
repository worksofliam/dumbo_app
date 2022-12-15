**free

ctl-opt dftactgrp(*no);

dcl-pi P1529;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P886.rpgleinc'
/copy 'qrpgleref/P589.rpgleinc'
/copy 'qrpgleref/P804.rpgleinc'

dcl-ds T302 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T302 FROM T302 LIMIT 1;

theCharVar = 'Hello from P1529';
dsply theCharVar;
P886();
P589();
P804();
return;