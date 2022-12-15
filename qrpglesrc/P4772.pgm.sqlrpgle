**free

ctl-opt dftactgrp(*no);

dcl-pi P4772;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3000.rpgleinc'
/copy 'qrpgleref/P1524.rpgleinc'
/copy 'qrpgleref/P859.rpgleinc'

dcl-ds T1570 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1570 FROM T1570 LIMIT 1;

theCharVar = 'Hello from P4772';
dsply theCharVar;
callp localProc();
P3000();
P1524();
P859();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4772 in the procedure';
end-proc;