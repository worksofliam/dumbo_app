**free

ctl-opt dftactgrp(*no);

dcl-pi P269;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P54.rpgleinc'
/copy 'qrpgleref/P95.rpgleinc'
/copy 'qrpgleref/P180.rpgleinc'

dcl-ds T81 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T81 FROM T81 LIMIT 1;

theCharVar = 'Hello from P269';
dsply theCharVar;
P54();
P95();
P180();
return;