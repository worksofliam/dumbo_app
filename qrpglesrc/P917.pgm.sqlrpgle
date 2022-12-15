**free

ctl-opt dftactgrp(*no);

dcl-pi P917;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P310.rpgleinc'
/copy 'qrpgleref/P470.rpgleinc'
/copy 'qrpgleref/P222.rpgleinc'

dcl-ds T269 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T269 FROM T269 LIMIT 1;

theCharVar = 'Hello from P917';
dsply theCharVar;
P310();
P470();
P222();
return;