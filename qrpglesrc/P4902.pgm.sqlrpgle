**free

ctl-opt dftactgrp(*no);

dcl-pi P4902;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2467.rpgleinc'
/copy 'qrpgleref/P983.rpgleinc'
/copy 'qrpgleref/P1595.rpgleinc'

dcl-ds T84 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T84 FROM T84 LIMIT 1;

theCharVar = 'Hello from P4902';
dsply theCharVar;
callp localProc();
P2467();
P983();
P1595();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4902 in the procedure';
end-proc;