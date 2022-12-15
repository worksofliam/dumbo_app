**free

ctl-opt dftactgrp(*no);

dcl-pi P1956;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1517.rpgleinc'
/copy 'qrpgleref/P674.rpgleinc'
/copy 'qrpgleref/P732.rpgleinc'

dcl-ds T102 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T102 FROM T102 LIMIT 1;

theCharVar = 'Hello from P1956';
dsply theCharVar;
P1517();
P674();
P732();
return;