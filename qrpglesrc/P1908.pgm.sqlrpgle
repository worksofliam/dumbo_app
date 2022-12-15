**free

ctl-opt dftactgrp(*no);

dcl-pi P1908;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P856.rpgleinc'
/copy 'qrpgleref/P1006.rpgleinc'
/copy 'qrpgleref/P237.rpgleinc'

dcl-ds T879 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T879 FROM T879 LIMIT 1;

theCharVar = 'Hello from P1908';
dsply theCharVar;
P856();
P1006();
P237();
return;