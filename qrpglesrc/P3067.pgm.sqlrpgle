**free

ctl-opt dftactgrp(*no);

dcl-pi P3067;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1829.rpgleinc'
/copy 'qrpgleref/P1597.rpgleinc'
/copy 'qrpgleref/P1392.rpgleinc'

dcl-ds T360 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T360 FROM T360 LIMIT 1;

theCharVar = 'Hello from P3067';
dsply theCharVar;
callp localProc();
P1829();
P1597();
P1392();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3067 in the procedure';
end-proc;