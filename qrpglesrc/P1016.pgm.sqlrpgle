**free

ctl-opt dftactgrp(*no);

dcl-pi P1016;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P729.rpgleinc'
/copy 'qrpgleref/P9.rpgleinc'
/copy 'qrpgleref/P822.rpgleinc'

dcl-ds T47 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T47 FROM T47 LIMIT 1;

theCharVar = 'Hello from P1016';
dsply theCharVar;
callp localProc();
P729();
P9();
P822();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1016 in the procedure';
end-proc;