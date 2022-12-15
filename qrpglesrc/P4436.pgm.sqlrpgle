**free

ctl-opt dftactgrp(*no);

dcl-pi P4436;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2378.rpgleinc'
/copy 'qrpgleref/P3641.rpgleinc'
/copy 'qrpgleref/P3024.rpgleinc'

dcl-ds T241 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T241 FROM T241 LIMIT 1;

theCharVar = 'Hello from P4436';
dsply theCharVar;
callp localProc();
P2378();
P3641();
P3024();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4436 in the procedure';
end-proc;