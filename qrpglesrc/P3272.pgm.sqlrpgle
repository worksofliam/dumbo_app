**free

ctl-opt dftactgrp(*no);

dcl-pi P3272;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3223.rpgleinc'
/copy 'qrpgleref/P1521.rpgleinc'
/copy 'qrpgleref/P1060.rpgleinc'

dcl-ds T845 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T845 FROM T845 LIMIT 1;

theCharVar = 'Hello from P3272';
dsply theCharVar;
callp localProc();
P3223();
P1521();
P1060();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3272 in the procedure';
end-proc;