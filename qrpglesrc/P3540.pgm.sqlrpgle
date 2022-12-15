**free

ctl-opt dftactgrp(*no);

dcl-pi P3540;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P867.rpgleinc'
/copy 'qrpgleref/P3321.rpgleinc'
/copy 'qrpgleref/P345.rpgleinc'

dcl-ds T887 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T887 FROM T887 LIMIT 1;

theCharVar = 'Hello from P3540';
dsply theCharVar;
callp localProc();
P867();
P3321();
P345();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3540 in the procedure';
end-proc;