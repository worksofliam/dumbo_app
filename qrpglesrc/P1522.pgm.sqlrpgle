**free

ctl-opt dftactgrp(*no);

dcl-pi P1522;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P749.rpgleinc'
/copy 'qrpgleref/P562.rpgleinc'
/copy 'qrpgleref/P693.rpgleinc'

dcl-ds T129 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T129 FROM T129 LIMIT 1;

theCharVar = 'Hello from P1522';
dsply theCharVar;
P749();
P562();
P693();
return;