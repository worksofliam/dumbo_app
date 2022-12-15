**free

ctl-opt dftactgrp(*no);

dcl-pi P979;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P969.rpgleinc'
/copy 'qrpgleref/P282.rpgleinc'
/copy 'qrpgleref/P675.rpgleinc'

dcl-ds T223 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T223 FROM T223 LIMIT 1;

theCharVar = 'Hello from P979';
dsply theCharVar;
P969();
P282();
P675();
return;