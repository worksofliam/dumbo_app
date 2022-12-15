**free

ctl-opt dftactgrp(*no);

dcl-pi P190;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P120.rpgleinc'
/copy 'qrpgleref/P173.rpgleinc'

dcl-ds T323 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T323 FROM T323 LIMIT 1;

theCharVar = 'Hello from P190';
dsply theCharVar;
P120();
P173();
return;