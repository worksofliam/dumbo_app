**free

ctl-opt dftactgrp(*no);

dcl-pi P3758;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3527.rpgleinc'
/copy 'qrpgleref/P1577.rpgleinc'
/copy 'qrpgleref/P1475.rpgleinc'

dcl-ds T1189 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1189 FROM T1189 LIMIT 1;

theCharVar = 'Hello from P3758';
dsply theCharVar;
callp localProc();
P3527();
P1577();
P1475();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3758 in the procedure';
end-proc;