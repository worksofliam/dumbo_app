**free

ctl-opt dftactgrp(*no);

dcl-pi P544;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P314.rpgleinc'
/copy 'qrpgleref/P171.rpgleinc'
/copy 'qrpgleref/P277.rpgleinc'

dcl-ds T268 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T268 FROM T268 LIMIT 1;

theCharVar = 'Hello from P544';
dsply theCharVar;
P314();
P171();
P277();
return;