**free

ctl-opt dftactgrp(*no);

dcl-pi P2850;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2236.rpgleinc'
/copy 'qrpgleref/P378.rpgleinc'
/copy 'qrpgleref/P1386.rpgleinc'

dcl-ds T252 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T252 FROM T252 LIMIT 1;

theCharVar = 'Hello from P2850';
dsply theCharVar;
callp localProc();
P2236();
P378();
P1386();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2850 in the procedure';
end-proc;