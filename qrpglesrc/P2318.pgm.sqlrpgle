**free

ctl-opt dftactgrp(*no);

dcl-pi P2318;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2123.rpgleinc'
/copy 'qrpgleref/P700.rpgleinc'
/copy 'qrpgleref/P289.rpgleinc'

dcl-ds T492 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T492 FROM T492 LIMIT 1;

theCharVar = 'Hello from P2318';
dsply theCharVar;
P2123();
P700();
P289();
return;