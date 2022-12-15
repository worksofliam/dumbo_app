**free

ctl-opt dftactgrp(*no);

dcl-pi P1991;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P537.rpgleinc'
/copy 'qrpgleref/P73.rpgleinc'
/copy 'qrpgleref/P1444.rpgleinc'

dcl-ds T1220 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1220 FROM T1220 LIMIT 1;

theCharVar = 'Hello from P1991';
dsply theCharVar;
callp localProc();
P537();
P73();
P1444();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1991 in the procedure';
end-proc;