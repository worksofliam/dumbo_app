**free

ctl-opt dftactgrp(*no);

dcl-pi P1220;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1066.rpgleinc'
/copy 'qrpgleref/P451.rpgleinc'
/copy 'qrpgleref/P1024.rpgleinc'

dcl-ds theTable extname('T420') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T420 LIMIT 1;

theCharVar = 'Hello from P1220';
dsply theCharVar;
callp localProc();
P1066();
P451();
P1024();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1220 in the procedure';
end-proc;