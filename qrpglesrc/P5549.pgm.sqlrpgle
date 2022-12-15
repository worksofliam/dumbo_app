**free

ctl-opt dftactgrp(*no);

dcl-pi P5549;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4519.rpgleinc'
/copy 'qrpgleref/P5192.rpgleinc'
/copy 'qrpgleref/P3865.rpgleinc'

dcl-ds T1132 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1132 FROM T1132 LIMIT 1;

theCharVar = 'Hello from P5549';
dsply theCharVar;
callp localProc();
P4519();
P5192();
P3865();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5549 in the procedure';
end-proc;