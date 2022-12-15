**free

ctl-opt dftactgrp(*no);

dcl-pi P243;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P98.rpgleinc'
/copy 'qrpgleref/P95.rpgleinc'

dcl-ds T213 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T213 FROM T213 LIMIT 1;

theCharVar = 'Hello from P243';
dsply theCharVar;
P98();
P95();
return;