**free

ctl-opt dftactgrp(*no);

dcl-pi P1537;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P212.rpgleinc'
/copy 'qrpgleref/P1423.rpgleinc'
/copy 'qrpgleref/P1400.rpgleinc'

dcl-ds T920 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T920 FROM T920 LIMIT 1;

theCharVar = 'Hello from P1537';
dsply theCharVar;
callp localProc();
P212();
P1423();
P1400();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1537 in the procedure';
end-proc;