**free

ctl-opt dftactgrp(*no);

dcl-pi P4770;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1812.rpgleinc'
/copy 'qrpgleref/P2153.rpgleinc'
/copy 'qrpgleref/P4066.rpgleinc'

dcl-ds T291 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T291 FROM T291 LIMIT 1;

theCharVar = 'Hello from P4770';
dsply theCharVar;
callp localProc();
P1812();
P2153();
P4066();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4770 in the procedure';
end-proc;