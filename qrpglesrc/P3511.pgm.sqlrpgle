**free

ctl-opt dftactgrp(*no);

dcl-pi P3511;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P849.rpgleinc'
/copy 'qrpgleref/P3009.rpgleinc'
/copy 'qrpgleref/P2378.rpgleinc'

dcl-ds T1039 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1039 FROM T1039 LIMIT 1;

theCharVar = 'Hello from P3511';
dsply theCharVar;
callp localProc();
P849();
P3009();
P2378();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3511 in the procedure';
end-proc;