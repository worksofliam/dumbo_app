**free

ctl-opt dftactgrp(*no);

dcl-pi P2706;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P893.rpgleinc'
/copy 'qrpgleref/P1103.rpgleinc'
/copy 'qrpgleref/P1157.rpgleinc'

dcl-ds T796 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T796 FROM T796 LIMIT 1;

theCharVar = 'Hello from P2706';
dsply theCharVar;
callp localProc();
P893();
P1103();
P1157();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2706 in the procedure';
end-proc;