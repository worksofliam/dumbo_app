**free

ctl-opt dftactgrp(*no);

dcl-pi P2106;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P386.rpgleinc'
/copy 'qrpgleref/P1029.rpgleinc'
/copy 'qrpgleref/P1789.rpgleinc'

dcl-ds T1064 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1064 FROM T1064 LIMIT 1;

theCharVar = 'Hello from P2106';
dsply theCharVar;
callp localProc();
P386();
P1029();
P1789();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2106 in the procedure';
end-proc;