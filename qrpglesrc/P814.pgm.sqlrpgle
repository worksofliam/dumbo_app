**free

ctl-opt dftactgrp(*no);

dcl-pi P814;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P693.rpgleinc'
/copy 'qrpgleref/P32.rpgleinc'
/copy 'qrpgleref/P678.rpgleinc'

dcl-ds T193 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T193 FROM T193 LIMIT 1;

theCharVar = 'Hello from P814';
dsply theCharVar;
callp localProc();
P693();
P32();
P678();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P814 in the procedure';
end-proc;