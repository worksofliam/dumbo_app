**free

ctl-opt dftactgrp(*no);

dcl-pi P128;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P123.rpgleinc'
/copy 'qrpgleref/P99.rpgleinc'
/copy 'qrpgleref/P95.rpgleinc'

dcl-ds T80 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T80 FROM T80 LIMIT 1;

theCharVar = 'Hello from P128';
dsply theCharVar;
P123();
P99();
P95();
return;