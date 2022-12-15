**free

ctl-opt dftactgrp(*no);

dcl-pi P469;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P379.rpgleinc'
/copy 'qrpgleref/P326.rpgleinc'
/copy 'qrpgleref/P453.rpgleinc'

dcl-ds T73 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T73 FROM T73 LIMIT 1;

theCharVar = 'Hello from P469';
dsply theCharVar;
P379();
P326();
P453();
return;