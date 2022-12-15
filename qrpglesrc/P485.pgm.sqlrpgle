**free

ctl-opt dftactgrp(*no);

dcl-pi P485;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P78.rpgleinc'
/copy 'qrpgleref/P240.rpgleinc'
/copy 'qrpgleref/P140.rpgleinc'

dcl-ds T327 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T327 FROM T327 LIMIT 1;

theCharVar = 'Hello from P485';
dsply theCharVar;
P78();
P240();
P140();
return;