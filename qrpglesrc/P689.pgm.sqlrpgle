**free

ctl-opt dftactgrp(*no);

dcl-pi P689;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P680.rpgleinc'
/copy 'qrpgleref/P416.rpgleinc'
/copy 'qrpgleref/P212.rpgleinc'

dcl-ds T521 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T521 FROM T521 LIMIT 1;

theCharVar = 'Hello from P689';
dsply theCharVar;
callp localProc();
P680();
P416();
P212();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P689 in the procedure';
end-proc;