**free

ctl-opt dftactgrp(*no);

dcl-pi P1814;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1504.rpgleinc'
/copy 'qrpgleref/P1701.rpgleinc'
/copy 'qrpgleref/P1464.rpgleinc'

dcl-ds T771 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T771 FROM T771 LIMIT 1;

theCharVar = 'Hello from P1814';
dsply theCharVar;
callp localProc();
P1504();
P1701();
P1464();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1814 in the procedure';
end-proc;