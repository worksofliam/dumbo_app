**free

ctl-opt dftactgrp(*no);

dcl-pi P315;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P110.rpgleinc'
/copy 'qrpgleref/P228.rpgleinc'
/copy 'qrpgleref/P252.rpgleinc'

dcl-ds T477 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T477 FROM T477 LIMIT 1;

theCharVar = 'Hello from P315';
dsply theCharVar;
P110();
P228();
P252();
return;