**free

ctl-opt dftactgrp(*no);

dcl-pi P1261;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P116.rpgleinc'
/copy 'qrpgleref/P708.rpgleinc'
/copy 'qrpgleref/P282.rpgleinc'

dcl-ds T909 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T909 FROM T909 LIMIT 1;

theCharVar = 'Hello from P1261';
dsply theCharVar;
P116();
P708();
P282();
return;