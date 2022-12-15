**free

ctl-opt dftactgrp(*no);

dcl-pi P4089;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2005.rpgleinc'
/copy 'qrpgleref/P1100.rpgleinc'
/copy 'qrpgleref/P4004.rpgleinc'

dcl-ds T299 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T299 FROM T299 LIMIT 1;

theCharVar = 'Hello from P4089';
dsply theCharVar;
callp localProc();
P2005();
P1100();
P4004();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4089 in the procedure';
end-proc;