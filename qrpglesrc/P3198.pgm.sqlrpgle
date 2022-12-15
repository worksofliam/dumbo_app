**free

ctl-opt dftactgrp(*no);

dcl-pi P3198;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1165.rpgleinc'
/copy 'qrpgleref/P2622.rpgleinc'
/copy 'qrpgleref/P2874.rpgleinc'

dcl-ds T104 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T104 FROM T104 LIMIT 1;

theCharVar = 'Hello from P3198';
dsply theCharVar;
callp localProc();
P1165();
P2622();
P2874();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3198 in the procedure';
end-proc;