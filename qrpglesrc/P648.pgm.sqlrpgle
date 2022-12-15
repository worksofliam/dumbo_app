**free

ctl-opt dftactgrp(*no);

dcl-pi P648;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P65.rpgleinc'
/copy 'qrpgleref/P257.rpgleinc'
/copy 'qrpgleref/P569.rpgleinc'

dcl-ds theTable extname('T836') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T836 LIMIT 1;

theCharVar = 'Hello from P648';
dsply theCharVar;
callp localProc();
P65();
P257();
P569();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P648 in the procedure';
end-proc;