**free

ctl-opt dftactgrp(*no);

dcl-pi P5474;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2012.rpgleinc'
/copy 'qrpgleref/P2803.rpgleinc'
/copy 'qrpgleref/P4937.rpgleinc'

dcl-ds T913 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T913 FROM T913 LIMIT 1;

theCharVar = 'Hello from P5474';
dsply theCharVar;
callp localProc();
P2012();
P2803();
P4937();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5474 in the procedure';
end-proc;