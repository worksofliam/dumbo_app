**free

ctl-opt dftactgrp(*no);

dcl-pi P1270;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P168.rpgleinc'
/copy 'qrpgleref/P456.rpgleinc'
/copy 'qrpgleref/P855.rpgleinc'

dcl-ds T385 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T385 FROM T385 LIMIT 1;

theCharVar = 'Hello from P1270';
dsply theCharVar;
callp localProc();
P168();
P456();
P855();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1270 in the procedure';
end-proc;