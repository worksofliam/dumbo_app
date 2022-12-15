**free

ctl-opt dftactgrp(*no);

dcl-pi P1088;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P817.rpgleinc'
/copy 'qrpgleref/P165.rpgleinc'
/copy 'qrpgleref/P0.rpgleinc'

dcl-ds T1443 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1443 FROM T1443 LIMIT 1;

theCharVar = 'Hello from P1088';
dsply theCharVar;
callp localProc();
P817();
P165();
P0();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1088 in the procedure';
end-proc;