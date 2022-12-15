**free

ctl-opt dftactgrp(*no);

dcl-pi P3634;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2091.rpgleinc'
/copy 'qrpgleref/P1396.rpgleinc'
/copy 'qrpgleref/P26.rpgleinc'

dcl-ds T1427 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1427 FROM T1427 LIMIT 1;

theCharVar = 'Hello from P3634';
dsply theCharVar;
callp localProc();
P2091();
P1396();
P26();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3634 in the procedure';
end-proc;