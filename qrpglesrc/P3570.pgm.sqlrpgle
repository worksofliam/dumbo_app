**free

ctl-opt dftactgrp(*no);

dcl-pi P3570;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2485.rpgleinc'
/copy 'qrpgleref/P2108.rpgleinc'
/copy 'qrpgleref/P2327.rpgleinc'

dcl-ds T833 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T833 FROM T833 LIMIT 1;

theCharVar = 'Hello from P3570';
dsply theCharVar;
callp localProc();
P2485();
P2108();
P2327();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3570 in the procedure';
end-proc;