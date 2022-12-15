**free

ctl-opt dftactgrp(*no);

dcl-pi P2624;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1134.rpgleinc'
/copy 'qrpgleref/P2610.rpgleinc'
/copy 'qrpgleref/P1903.rpgleinc'

dcl-ds T1010 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1010 FROM T1010 LIMIT 1;

theCharVar = 'Hello from P2624';
dsply theCharVar;
callp localProc();
P1134();
P2610();
P1903();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2624 in the procedure';
end-proc;