**free

ctl-opt dftactgrp(*no);

dcl-pi P219;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P38.rpgleinc'
/copy 'qrpgleref/P60.rpgleinc'
/copy 'qrpgleref/P201.rpgleinc'

dcl-ds T1851 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1851 FROM T1851 LIMIT 1;

theCharVar = 'Hello from P219';
dsply theCharVar;
callp localProc();
P38();
P60();
P201();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P219 in the procedure';
end-proc;