**free

ctl-opt dftactgrp(*no);

dcl-pi P620;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P94.rpgleinc'
/copy 'qrpgleref/P541.rpgleinc'
/copy 'qrpgleref/P165.rpgleinc'

dcl-ds T381 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T381 FROM T381 LIMIT 1;

theCharVar = 'Hello from P620';
dsply theCharVar;
P94();
P541();
P165();
return;