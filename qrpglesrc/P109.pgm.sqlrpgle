**free

ctl-opt dftactgrp(*no);

dcl-pi P109;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P63.rpgleinc'
/copy 'qrpgleref/P28.rpgleinc'
/copy 'qrpgleref/P0.rpgleinc'

dcl-ds T104 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T104 FROM T104 LIMIT 1;

theCharVar = 'Hello from P109';
dsply theCharVar;
callp localProc();
P63();
P28();
P0();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P109 in the procedure';
end-proc;