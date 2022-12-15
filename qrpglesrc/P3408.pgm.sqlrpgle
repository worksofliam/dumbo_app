**free

ctl-opt dftactgrp(*no);

dcl-pi P3408;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3337.rpgleinc'
/copy 'qrpgleref/P1901.rpgleinc'
/copy 'qrpgleref/P3164.rpgleinc'

dcl-ds T1180 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1180 FROM T1180 LIMIT 1;

theCharVar = 'Hello from P3408';
dsply theCharVar;
callp localProc();
P3337();
P1901();
P3164();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3408 in the procedure';
end-proc;