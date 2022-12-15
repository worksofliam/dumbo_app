**free

ctl-opt dftactgrp(*no);

dcl-pi P167;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P120.rpgleinc'
/copy 'qrpgleref/P146.rpgleinc'

dcl-ds T322 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T322 FROM T322 LIMIT 1;

theCharVar = 'Hello from P167';
dsply theCharVar;
P120();
P146();
return;