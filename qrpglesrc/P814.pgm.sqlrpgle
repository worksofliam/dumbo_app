**free

ctl-opt dftactgrp(*no);

dcl-pi P814;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P564.rpgleinc'
/copy 'qrpgleref/P293.rpgleinc'
/copy 'qrpgleref/P638.rpgleinc'

dcl-ds T767 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T767 FROM T767 LIMIT 1;

theCharVar = 'Hello from P814';
dsply theCharVar;
callp localProc();
P564();
P293();
P638();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P814 in the procedure';
end-proc;