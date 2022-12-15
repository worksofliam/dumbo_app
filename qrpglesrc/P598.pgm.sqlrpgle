**free

ctl-opt dftactgrp(*no);

dcl-pi P598;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P113.rpgleinc'
/copy 'qrpgleref/P470.rpgleinc'
/copy 'qrpgleref/P175.rpgleinc'

dcl-ds T134 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T134 FROM T134 LIMIT 1;

theCharVar = 'Hello from P598';
dsply theCharVar;
P113();
P470();
P175();
return;