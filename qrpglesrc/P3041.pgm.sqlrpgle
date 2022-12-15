**free

ctl-opt dftactgrp(*no);

dcl-pi P3041;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P881.rpgleinc'
/copy 'qrpgleref/P581.rpgleinc'
/copy 'qrpgleref/P292.rpgleinc'

dcl-ds T63 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T63 FROM T63 LIMIT 1;

theCharVar = 'Hello from P3041';
dsply theCharVar;
callp localProc();
P881();
P581();
P292();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3041 in the procedure';
end-proc;