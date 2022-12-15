**free

ctl-opt dftactgrp(*no);

dcl-pi P1989;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P210.rpgleinc'
/copy 'qrpgleref/P556.rpgleinc'
/copy 'qrpgleref/P1255.rpgleinc'

dcl-ds T636 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T636 FROM T636 LIMIT 1;

theCharVar = 'Hello from P1989';
dsply theCharVar;
callp localProc();
P210();
P556();
P1255();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1989 in the procedure';
end-proc;