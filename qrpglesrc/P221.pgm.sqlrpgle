**free

ctl-opt dftactgrp(*no);

dcl-pi P221;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P163.rpgleinc'
/copy 'qrpgleref/P110.rpgleinc'
/copy 'qrpgleref/P91.rpgleinc'

dcl-ds T1202 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1202 FROM T1202 LIMIT 1;

theCharVar = 'Hello from P221';
dsply theCharVar;
callp localProc();
P163();
P110();
P91();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P221 in the procedure';
end-proc;