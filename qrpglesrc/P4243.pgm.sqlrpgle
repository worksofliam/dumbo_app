**free

ctl-opt dftactgrp(*no);

dcl-pi P4243;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P902.rpgleinc'
/copy 'qrpgleref/P1811.rpgleinc'
/copy 'qrpgleref/P1663.rpgleinc'

dcl-ds T290 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T290 FROM T290 LIMIT 1;

theCharVar = 'Hello from P4243';
dsply theCharVar;
P902();
P1811();
P1663();
return;