**free

ctl-opt dftactgrp(*no);

dcl-pi P3124;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1117.rpgleinc'
/copy 'qrpgleref/P1842.rpgleinc'
/copy 'qrpgleref/P2072.rpgleinc'

dcl-ds T1397 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1397 FROM T1397 LIMIT 1;

theCharVar = 'Hello from P3124';
dsply theCharVar;
callp localProc();
P1117();
P1842();
P2072();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3124 in the procedure';
end-proc;