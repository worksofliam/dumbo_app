**free

ctl-opt dftactgrp(*no);

dcl-pi P5070;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1541.rpgleinc'
/copy 'qrpgleref/P4835.rpgleinc'
/copy 'qrpgleref/P3603.rpgleinc'

dcl-ds T802 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T802 FROM T802 LIMIT 1;

theCharVar = 'Hello from P5070';
dsply theCharVar;
callp localProc();
P1541();
P4835();
P3603();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5070 in the procedure';
end-proc;