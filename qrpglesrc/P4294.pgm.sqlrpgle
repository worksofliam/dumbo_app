**free

ctl-opt dftactgrp(*no);

dcl-pi P4294;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1737.rpgleinc'
/copy 'qrpgleref/P1085.rpgleinc'
/copy 'qrpgleref/P3260.rpgleinc'

dcl-ds T955 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T955 FROM T955 LIMIT 1;

theCharVar = 'Hello from P4294';
dsply theCharVar;
callp localProc();
P1737();
P1085();
P3260();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4294 in the procedure';
end-proc;