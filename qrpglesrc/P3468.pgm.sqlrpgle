**free

ctl-opt dftactgrp(*no);

dcl-pi P3468;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3270.rpgleinc'
/copy 'qrpgleref/P2104.rpgleinc'
/copy 'qrpgleref/P1514.rpgleinc'

dcl-ds T970 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T970 FROM T970 LIMIT 1;

theCharVar = 'Hello from P3468';
dsply theCharVar;
callp localProc();
P3270();
P2104();
P1514();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3468 in the procedure';
end-proc;