**free

ctl-opt dftactgrp(*no);

dcl-pi P5250;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3114.rpgleinc'
/copy 'qrpgleref/P4856.rpgleinc'
/copy 'qrpgleref/P1570.rpgleinc'

dcl-ds T475 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T475 FROM T475 LIMIT 1;

theCharVar = 'Hello from P5250';
dsply theCharVar;
callp localProc();
P3114();
P4856();
P1570();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5250 in the procedure';
end-proc;