**free

ctl-opt dftactgrp(*no);

dcl-pi P1853;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P999.rpgleinc'
/copy 'qrpgleref/P84.rpgleinc'
/copy 'qrpgleref/P1100.rpgleinc'

dcl-ds T203 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T203 FROM T203 LIMIT 1;

theCharVar = 'Hello from P1853';
dsply theCharVar;
P999();
P84();
P1100();
return;