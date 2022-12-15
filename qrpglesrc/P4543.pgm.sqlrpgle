**free

ctl-opt dftactgrp(*no);

dcl-pi P4543;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3436.rpgleinc'
/copy 'qrpgleref/P2520.rpgleinc'
/copy 'qrpgleref/P38.rpgleinc'

dcl-ds T1251 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1251 FROM T1251 LIMIT 1;

theCharVar = 'Hello from P4543';
dsply theCharVar;
callp localProc();
P3436();
P2520();
P38();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4543 in the procedure';
end-proc;