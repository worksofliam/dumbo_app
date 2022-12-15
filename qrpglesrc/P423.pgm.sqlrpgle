**free

ctl-opt dftactgrp(*no);

dcl-pi P423;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P228.rpgleinc'
/copy 'qrpgleref/P383.rpgleinc'
/copy 'qrpgleref/P292.rpgleinc'

dcl-ds T112 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T112 FROM T112 LIMIT 1;

theCharVar = 'Hello from P423';
dsply theCharVar;
P228();
P383();
P292();
return;