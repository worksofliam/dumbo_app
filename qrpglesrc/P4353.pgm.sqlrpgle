**free

ctl-opt dftactgrp(*no);

dcl-pi P4353;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1248.rpgleinc'
/copy 'qrpgleref/P3063.rpgleinc'
/copy 'qrpgleref/P2119.rpgleinc'

dcl-ds T1070 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1070 FROM T1070 LIMIT 1;

theCharVar = 'Hello from P4353';
dsply theCharVar;
callp localProc();
P1248();
P3063();
P2119();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4353 in the procedure';
end-proc;