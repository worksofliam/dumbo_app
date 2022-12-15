**free

ctl-opt dftactgrp(*no);

dcl-pi P3481;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1812.rpgleinc'
/copy 'qrpgleref/P3058.rpgleinc'
/copy 'qrpgleref/P1259.rpgleinc'

dcl-ds T545 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T545 FROM T545 LIMIT 1;

theCharVar = 'Hello from P3481';
dsply theCharVar;
callp localProc();
P1812();
P3058();
P1259();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3481 in the procedure';
end-proc;