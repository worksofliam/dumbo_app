**free

ctl-opt dftactgrp(*no);

dcl-pi P720;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P410.rpgleinc'
/copy 'qrpgleref/P538.rpgleinc'
/copy 'qrpgleref/P533.rpgleinc'

dcl-ds T79 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T79 FROM T79 LIMIT 1;

theCharVar = 'Hello from P720';
dsply theCharVar;
P410();
P538();
P533();
return;