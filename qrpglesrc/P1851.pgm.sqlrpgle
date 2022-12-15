**free

ctl-opt dftactgrp(*no);

dcl-pi P1851;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1121.rpgleinc'
/copy 'qrpgleref/P624.rpgleinc'
/copy 'qrpgleref/P756.rpgleinc'

dcl-ds T391 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T391 FROM T391 LIMIT 1;

theCharVar = 'Hello from P1851';
dsply theCharVar;
callp localProc();
P1121();
P624();
P756();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1851 in the procedure';
end-proc;