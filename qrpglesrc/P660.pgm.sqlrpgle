**free

ctl-opt dftactgrp(*no);

dcl-pi P660;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P530.rpgleinc'
/copy 'qrpgleref/P359.rpgleinc'
/copy 'qrpgleref/P481.rpgleinc'

dcl-ds T143 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T143 FROM T143 LIMIT 1;

theCharVar = 'Hello from P660';
dsply theCharVar;
P530();
P359();
P481();
return;