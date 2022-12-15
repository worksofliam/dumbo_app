**free

ctl-opt dftactgrp(*no);

dcl-pi P658;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P61.rpgleinc'
/copy 'qrpgleref/P501.rpgleinc'
/copy 'qrpgleref/P453.rpgleinc'

dcl-ds T351 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T351 FROM T351 LIMIT 1;

theCharVar = 'Hello from P658';
dsply theCharVar;
callp localProc();
P61();
P501();
P453();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P658 in the procedure';
end-proc;