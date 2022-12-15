**free

ctl-opt dftactgrp(*no);

dcl-pi P528;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P241.rpgleinc'
/copy 'qrpgleref/P249.rpgleinc'
/copy 'qrpgleref/P94.rpgleinc'

dcl-ds T164 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T164 FROM T164 LIMIT 1;

theCharVar = 'Hello from P528';
dsply theCharVar;
P241();
P249();
P94();
return;