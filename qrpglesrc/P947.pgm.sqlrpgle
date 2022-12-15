**free

ctl-opt dftactgrp(*no);

dcl-pi P947;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P446.rpgleinc'
/copy 'qrpgleref/P38.rpgleinc'
/copy 'qrpgleref/P870.rpgleinc'

dcl-ds T244 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T244 FROM T244 LIMIT 1;

theCharVar = 'Hello from P947';
dsply theCharVar;
P446();
P38();
P870();
return;