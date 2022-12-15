**free

ctl-opt dftactgrp(*no);

dcl-pi P3479;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P730.rpgleinc'
/copy 'qrpgleref/P1607.rpgleinc'
/copy 'qrpgleref/P1541.rpgleinc'

dcl-ds T309 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T309 FROM T309 LIMIT 1;

theCharVar = 'Hello from P3479';
dsply theCharVar;
callp localProc();
P730();
P1607();
P1541();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3479 in the procedure';
end-proc;