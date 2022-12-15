**free

ctl-opt dftactgrp(*no);

dcl-pi P2040;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P25.rpgleinc'
/copy 'qrpgleref/P1603.rpgleinc'
/copy 'qrpgleref/P1859.rpgleinc'

dcl-ds T1078 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1078 FROM T1078 LIMIT 1;

theCharVar = 'Hello from P2040';
dsply theCharVar;
callp localProc();
P25();
P1603();
P1859();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2040 in the procedure';
end-proc;