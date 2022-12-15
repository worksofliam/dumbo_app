**free

ctl-opt dftactgrp(*no);

dcl-pi P335;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P52.rpgleinc'
/copy 'qrpgleref/P0.rpgleinc'
/copy 'qrpgleref/P248.rpgleinc'

dcl-ds T733 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T733 FROM T733 LIMIT 1;

theCharVar = 'Hello from P335';
dsply theCharVar;
callp localProc();
P52();
P0();
P248();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P335 in the procedure';
end-proc;