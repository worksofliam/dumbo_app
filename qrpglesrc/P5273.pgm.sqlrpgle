**free

ctl-opt dftactgrp(*no);

dcl-pi P5273;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2927.rpgleinc'
/copy 'qrpgleref/P2754.rpgleinc'
/copy 'qrpgleref/P1965.rpgleinc'

dcl-ds T1009 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1009 FROM T1009 LIMIT 1;

theCharVar = 'Hello from P5273';
dsply theCharVar;
callp localProc();
P2927();
P2754();
P1965();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5273 in the procedure';
end-proc;