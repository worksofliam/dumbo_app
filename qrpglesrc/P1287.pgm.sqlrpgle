**free

ctl-opt dftactgrp(*no);

dcl-pi P1287;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P249.rpgleinc'
/copy 'qrpgleref/P818.rpgleinc'
/copy 'qrpgleref/P211.rpgleinc'

dcl-ds T403 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T403 FROM T403 LIMIT 1;

theCharVar = 'Hello from P1287';
dsply theCharVar;
P249();
P818();
P211();
return;