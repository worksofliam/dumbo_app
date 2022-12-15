**free

ctl-opt dftactgrp(*no);

dcl-pi P2992;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P10.rpgleinc'
/copy 'qrpgleref/P1168.rpgleinc'
/copy 'qrpgleref/P802.rpgleinc'

dcl-ds T334 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T334 FROM T334 LIMIT 1;

theCharVar = 'Hello from P2992';
dsply theCharVar;
callp localProc();
P10();
P1168();
P802();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2992 in the procedure';
end-proc;