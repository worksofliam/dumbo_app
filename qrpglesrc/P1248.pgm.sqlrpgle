**free

ctl-opt dftactgrp(*no);

dcl-pi P1248;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P851.rpgleinc'
/copy 'qrpgleref/P163.rpgleinc'
/copy 'qrpgleref/P695.rpgleinc'

dcl-ds T492 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T492 FROM T492 LIMIT 1;

theCharVar = 'Hello from P1248';
dsply theCharVar;
callp localProc();
P851();
P163();
P695();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1248 in the procedure';
end-proc;