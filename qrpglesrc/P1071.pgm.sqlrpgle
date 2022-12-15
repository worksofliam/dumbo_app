**free

ctl-opt dftactgrp(*no);

dcl-pi P1071;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P637.rpgleinc'
/copy 'qrpgleref/P201.rpgleinc'
/copy 'qrpgleref/P543.rpgleinc'

dcl-ds T1238 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1238 FROM T1238 LIMIT 1;

theCharVar = 'Hello from P1071';
dsply theCharVar;
callp localProc();
P637();
P201();
P543();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1071 in the procedure';
end-proc;