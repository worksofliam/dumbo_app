**free

ctl-opt dftactgrp(*no);

dcl-pi P1041;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P652.rpgleinc'
/copy 'qrpgleref/P605.rpgleinc'
/copy 'qrpgleref/P121.rpgleinc'

dcl-ds T717 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T717 FROM T717 LIMIT 1;

theCharVar = 'Hello from P1041';
dsply theCharVar;
P652();
P605();
P121();
return;