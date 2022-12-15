**free

ctl-opt dftactgrp(*no);

dcl-pi P1783;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1642.rpgleinc'
/copy 'qrpgleref/P959.rpgleinc'
/copy 'qrpgleref/P965.rpgleinc'

dcl-ds T381 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T381 FROM T381 LIMIT 1;

theCharVar = 'Hello from P1783';
dsply theCharVar;
P1642();
P959();
P965();
return;