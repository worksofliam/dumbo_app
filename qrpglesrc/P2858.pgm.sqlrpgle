**free

ctl-opt dftactgrp(*no);

dcl-pi P2858;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2144.rpgleinc'
/copy 'qrpgleref/P239.rpgleinc'
/copy 'qrpgleref/P2541.rpgleinc'

dcl-ds T1193 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1193 FROM T1193 LIMIT 1;

theCharVar = 'Hello from P2858';
dsply theCharVar;
callp localProc();
P2144();
P239();
P2541();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2858 in the procedure';
end-proc;