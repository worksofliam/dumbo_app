**free

ctl-opt dftactgrp(*no);

dcl-pi P816;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P275.rpgleinc'
/copy 'qrpgleref/P96.rpgleinc'
/copy 'qrpgleref/P426.rpgleinc'

dcl-ds T1147 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1147 FROM T1147 LIMIT 1;

theCharVar = 'Hello from P816';
dsply theCharVar;
callp localProc();
P275();
P96();
P426();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P816 in the procedure';
end-proc;