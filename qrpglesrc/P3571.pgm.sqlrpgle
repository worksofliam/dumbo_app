**free

ctl-opt dftactgrp(*no);

dcl-pi P3571;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3493.rpgleinc'
/copy 'qrpgleref/P55.rpgleinc'
/copy 'qrpgleref/P1734.rpgleinc'

dcl-ds T699 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T699 FROM T699 LIMIT 1;

theCharVar = 'Hello from P3571';
dsply theCharVar;
callp localProc();
P3493();
P55();
P1734();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3571 in the procedure';
end-proc;