**free

ctl-opt dftactgrp(*no);

dcl-pi P5508;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2654.rpgleinc'
/copy 'qrpgleref/P1018.rpgleinc'
/copy 'qrpgleref/P3954.rpgleinc'

dcl-ds theTable extname('T1294') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1294 LIMIT 1;

theCharVar = 'Hello from P5508';
dsply theCharVar;
callp localProc();
P2654();
P1018();
P3954();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5508 in the procedure';
end-proc;