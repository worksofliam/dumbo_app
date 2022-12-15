**free

ctl-opt dftactgrp(*no);

dcl-pi P1105;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P441.rpgleinc'
/copy 'qrpgleref/P4.rpgleinc'
/copy 'qrpgleref/P934.rpgleinc'

dcl-ds T425 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T425 FROM T425 LIMIT 1;

theCharVar = 'Hello from P1105';
dsply theCharVar;
callp localProc();
P441();
P4();
P934();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1105 in the procedure';
end-proc;