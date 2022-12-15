**free

ctl-opt dftactgrp(*no);

dcl-pi P3152;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3122.rpgleinc'
/copy 'qrpgleref/P2219.rpgleinc'
/copy 'qrpgleref/P1495.rpgleinc'

dcl-ds T332 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T332 FROM T332 LIMIT 1;

theCharVar = 'Hello from P3152';
dsply theCharVar;
callp localProc();
P3122();
P2219();
P1495();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3152 in the procedure';
end-proc;