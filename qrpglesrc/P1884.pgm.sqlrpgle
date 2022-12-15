**free

ctl-opt dftactgrp(*no);

dcl-pi P1884;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1557.rpgleinc'
/copy 'qrpgleref/P1646.rpgleinc'
/copy 'qrpgleref/P1805.rpgleinc'

dcl-ds T891 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T891 FROM T891 LIMIT 1;

theCharVar = 'Hello from P1884';
dsply theCharVar;
callp localProc();
P1557();
P1646();
P1805();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1884 in the procedure';
end-proc;