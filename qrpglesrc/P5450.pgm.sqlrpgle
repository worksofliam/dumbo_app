**free

ctl-opt dftactgrp(*no);

dcl-pi P5450;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4128.rpgleinc'
/copy 'qrpgleref/P3849.rpgleinc'
/copy 'qrpgleref/P1540.rpgleinc'

dcl-ds T117 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T117 FROM T117 LIMIT 1;

theCharVar = 'Hello from P5450';
dsply theCharVar;
callp localProc();
P4128();
P3849();
P1540();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5450 in the procedure';
end-proc;