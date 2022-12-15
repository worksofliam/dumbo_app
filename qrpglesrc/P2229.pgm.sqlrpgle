**free

ctl-opt dftactgrp(*no);

dcl-pi P2229;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P416.rpgleinc'
/copy 'qrpgleref/P1530.rpgleinc'
/copy 'qrpgleref/P1046.rpgleinc'

dcl-ds T190 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T190 FROM T190 LIMIT 1;

theCharVar = 'Hello from P2229';
dsply theCharVar;
callp localProc();
P416();
P1530();
P1046();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2229 in the procedure';
end-proc;