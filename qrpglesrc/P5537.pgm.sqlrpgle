**free

ctl-opt dftactgrp(*no);

dcl-pi P5537;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P438.rpgleinc'
/copy 'qrpgleref/P760.rpgleinc'
/copy 'qrpgleref/P2113.rpgleinc'

dcl-ds T77 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T77 FROM T77 LIMIT 1;

theCharVar = 'Hello from P5537';
dsply theCharVar;
P438();
P760();
P2113();
return;