**free

ctl-opt dftactgrp(*no);

dcl-pi P3566;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2098.rpgleinc'
/copy 'qrpgleref/P1670.rpgleinc'
/copy 'qrpgleref/P1182.rpgleinc'

dcl-ds T1084 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1084 FROM T1084 LIMIT 1;

theCharVar = 'Hello from P3566';
dsply theCharVar;
callp localProc();
P2098();
P1670();
P1182();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3566 in the procedure';
end-proc;