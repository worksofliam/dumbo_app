**free

ctl-opt dftactgrp(*no);

dcl-pi P2949;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2671.rpgleinc'
/copy 'qrpgleref/P1387.rpgleinc'
/copy 'qrpgleref/P1038.rpgleinc'

dcl-ds T407 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T407 FROM T407 LIMIT 1;

theCharVar = 'Hello from P2949';
dsply theCharVar;
callp localProc();
P2671();
P1387();
P1038();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2949 in the procedure';
end-proc;