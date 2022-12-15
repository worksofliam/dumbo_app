**free

ctl-opt dftactgrp(*no);

dcl-pi P3286;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1118.rpgleinc'
/copy 'qrpgleref/P3017.rpgleinc'
/copy 'qrpgleref/P2827.rpgleinc'

dcl-ds T1717 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1717 FROM T1717 LIMIT 1;

theCharVar = 'Hello from P3286';
dsply theCharVar;
callp localProc();
P1118();
P3017();
P2827();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3286 in the procedure';
end-proc;