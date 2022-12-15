**free

ctl-opt dftactgrp(*no);

dcl-pi P696;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P61.rpgleinc'
/copy 'qrpgleref/P171.rpgleinc'
/copy 'qrpgleref/P285.rpgleinc'

dcl-ds T228 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T228 FROM T228 LIMIT 1;

theCharVar = 'Hello from P696';
dsply theCharVar;
P61();
P171();
P285();
return;