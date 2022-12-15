**free

ctl-opt dftactgrp(*no);

dcl-pi P2092;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P696.rpgleinc'
/copy 'qrpgleref/P1677.rpgleinc'
/copy 'qrpgleref/P1286.rpgleinc'

dcl-ds T383 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T383 FROM T383 LIMIT 1;

theCharVar = 'Hello from P2092';
dsply theCharVar;
callp localProc();
P696();
P1677();
P1286();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2092 in the procedure';
end-proc;