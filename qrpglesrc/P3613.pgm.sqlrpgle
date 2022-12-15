**free

ctl-opt dftactgrp(*no);

dcl-pi P3613;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3562.rpgleinc'
/copy 'qrpgleref/P2061.rpgleinc'
/copy 'qrpgleref/P814.rpgleinc'

dcl-ds T1777 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1777 FROM T1777 LIMIT 1;

theCharVar = 'Hello from P3613';
dsply theCharVar;
callp localProc();
P3562();
P2061();
P814();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3613 in the procedure';
end-proc;