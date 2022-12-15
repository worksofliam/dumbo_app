**free

ctl-opt dftactgrp(*no);

dcl-pi P1931;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P182.rpgleinc'
/copy 'qrpgleref/P879.rpgleinc'
/copy 'qrpgleref/P800.rpgleinc'

dcl-ds T830 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T830 FROM T830 LIMIT 1;

theCharVar = 'Hello from P1931';
dsply theCharVar;
callp localProc();
P182();
P879();
P800();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1931 in the procedure';
end-proc;