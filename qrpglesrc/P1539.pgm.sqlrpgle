**free

ctl-opt dftactgrp(*no);

dcl-pi P1539;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P43.rpgleinc'
/copy 'qrpgleref/P532.rpgleinc'
/copy 'qrpgleref/P755.rpgleinc'

dcl-ds T694 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T694 FROM T694 LIMIT 1;

theCharVar = 'Hello from P1539';
dsply theCharVar;
P43();
P532();
P755();
return;