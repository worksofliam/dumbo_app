**free

ctl-opt dftactgrp(*no);

dcl-pi P1023;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P967.rpgleinc'
/copy 'qrpgleref/P380.rpgleinc'
/copy 'qrpgleref/P974.rpgleinc'

dcl-ds T82 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T82 FROM T82 LIMIT 1;

theCharVar = 'Hello from P1023';
dsply theCharVar;
callp localProc();
P967();
P380();
P974();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1023 in the procedure';
end-proc;