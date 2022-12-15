**free

ctl-opt dftactgrp(*no);

dcl-pi P3706;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1983.rpgleinc'
/copy 'qrpgleref/P1745.rpgleinc'
/copy 'qrpgleref/P3682.rpgleinc'

dcl-ds T1169 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1169 FROM T1169 LIMIT 1;

theCharVar = 'Hello from P3706';
dsply theCharVar;
callp localProc();
P1983();
P1745();
P3682();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3706 in the procedure';
end-proc;