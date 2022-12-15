**free

ctl-opt dftactgrp(*no);

dcl-pi P1636;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P297.rpgleinc'
/copy 'qrpgleref/P1607.rpgleinc'
/copy 'qrpgleref/P451.rpgleinc'

dcl-ds T759 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T759 FROM T759 LIMIT 1;

theCharVar = 'Hello from P1636';
dsply theCharVar;
P297();
P1607();
P451();
return;