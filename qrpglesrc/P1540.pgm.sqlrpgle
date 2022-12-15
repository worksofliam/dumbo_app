**free

ctl-opt dftactgrp(*no);

dcl-pi P1540;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1005.rpgleinc'
/copy 'qrpgleref/P656.rpgleinc'
/copy 'qrpgleref/P823.rpgleinc'

dcl-ds T271 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T271 FROM T271 LIMIT 1;

theCharVar = 'Hello from P1540';
dsply theCharVar;
callp localProc();
P1005();
P656();
P823();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1540 in the procedure';
end-proc;