**free

ctl-opt dftactgrp(*no);

dcl-pi P1321;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P281.rpgleinc'
/copy 'qrpgleref/P1155.rpgleinc'
/copy 'qrpgleref/P699.rpgleinc'

dcl-ds T597 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T597 FROM T597 LIMIT 1;

theCharVar = 'Hello from P1321';
dsply theCharVar;
P281();
P1155();
P699();
return;