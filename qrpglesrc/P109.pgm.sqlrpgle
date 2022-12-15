**free

ctl-opt dftactgrp(*no);

dcl-pi P109;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P37.rpgleinc'
/copy 'qrpgleref/P85.rpgleinc'
/copy 'qrpgleref/P100.rpgleinc'

dcl-ds T681 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T681 FROM T681 LIMIT 1;

theCharVar = 'Hello from P109';
dsply theCharVar;
callp localProc();
P37();
P85();
P100();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P109 in the procedure';
end-proc;