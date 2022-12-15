**free

ctl-opt dftactgrp(*no);

dcl-pi P3294;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3259.rpgleinc'
/copy 'qrpgleref/P3147.rpgleinc'
/copy 'qrpgleref/P3006.rpgleinc'

dcl-ds T1589 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1589 FROM T1589 LIMIT 1;

theCharVar = 'Hello from P3294';
dsply theCharVar;
callp localProc();
P3259();
P3147();
P3006();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3294 in the procedure';
end-proc;