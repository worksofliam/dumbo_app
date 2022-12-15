**free

ctl-opt dftactgrp(*no);

dcl-pi P2790;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P300.rpgleinc'
/copy 'qrpgleref/P1161.rpgleinc'
/copy 'qrpgleref/P2054.rpgleinc'

dcl-ds T104 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T104 FROM T104 LIMIT 1;

theCharVar = 'Hello from P2790';
dsply theCharVar;
callp localProc();
P300();
P1161();
P2054();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2790 in the procedure';
end-proc;