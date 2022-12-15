**free

ctl-opt dftactgrp(*no);

dcl-pi P431;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P40.rpgleinc'
/copy 'qrpgleref/P110.rpgleinc'
/copy 'qrpgleref/P47.rpgleinc'

dcl-ds T921 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T921 FROM T921 LIMIT 1;

theCharVar = 'Hello from P431';
dsply theCharVar;
P40();
P110();
P47();
return;