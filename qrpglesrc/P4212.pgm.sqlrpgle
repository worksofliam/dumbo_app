**free

ctl-opt dftactgrp(*no);

dcl-pi P4212;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2961.rpgleinc'
/copy 'qrpgleref/P3878.rpgleinc'
/copy 'qrpgleref/P2510.rpgleinc'

dcl-ds T619 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T619 FROM T619 LIMIT 1;

theCharVar = 'Hello from P4212';
dsply theCharVar;
callp localProc();
P2961();
P3878();
P2510();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4212 in the procedure';
end-proc;