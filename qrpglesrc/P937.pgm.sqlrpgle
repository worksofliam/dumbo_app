**free

ctl-opt dftactgrp(*no);

dcl-pi P937;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P270.rpgleinc'
/copy 'qrpgleref/P533.rpgleinc'
/copy 'qrpgleref/P569.rpgleinc'

dcl-ds T872 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T872 FROM T872 LIMIT 1;

theCharVar = 'Hello from P937';
dsply theCharVar;
P270();
P533();
P569();
return;