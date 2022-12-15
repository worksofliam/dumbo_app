**free

ctl-opt dftactgrp(*no);

dcl-pi P2298;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P602.rpgleinc'
/copy 'qrpgleref/P1826.rpgleinc'
/copy 'qrpgleref/P269.rpgleinc'

dcl-ds T1596 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1596 FROM T1596 LIMIT 1;

theCharVar = 'Hello from P2298';
dsply theCharVar;
callp localProc();
P602();
P1826();
P269();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2298 in the procedure';
end-proc;