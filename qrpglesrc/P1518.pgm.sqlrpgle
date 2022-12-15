**free

ctl-opt dftactgrp(*no);

dcl-pi P1518;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P477.rpgleinc'
/copy 'qrpgleref/P1349.rpgleinc'
/copy 'qrpgleref/P7.rpgleinc'

dcl-ds T1430 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1430 FROM T1430 LIMIT 1;

theCharVar = 'Hello from P1518';
dsply theCharVar;
callp localProc();
P477();
P1349();
P7();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1518 in the procedure';
end-proc;