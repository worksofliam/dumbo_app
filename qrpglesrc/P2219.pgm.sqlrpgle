**free

ctl-opt dftactgrp(*no);

dcl-pi P2219;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1746.rpgleinc'
/copy 'qrpgleref/P791.rpgleinc'
/copy 'qrpgleref/P2168.rpgleinc'

dcl-ds T241 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T241 FROM T241 LIMIT 1;

theCharVar = 'Hello from P2219';
dsply theCharVar;
callp localProc();
P1746();
P791();
P2168();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2219 in the procedure';
end-proc;