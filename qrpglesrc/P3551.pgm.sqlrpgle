**free

ctl-opt dftactgrp(*no);

dcl-pi P3551;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1762.rpgleinc'
/copy 'qrpgleref/P745.rpgleinc'
/copy 'qrpgleref/P2328.rpgleinc'

dcl-ds T311 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T311 FROM T311 LIMIT 1;

theCharVar = 'Hello from P3551';
dsply theCharVar;
callp localProc();
P1762();
P745();
P2328();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3551 in the procedure';
end-proc;