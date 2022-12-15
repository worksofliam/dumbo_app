**free

ctl-opt dftactgrp(*no);

dcl-pi P3347;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1224.rpgleinc'
/copy 'qrpgleref/P1197.rpgleinc'
/copy 'qrpgleref/P768.rpgleinc'

dcl-ds theTable extname('T358') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T358 LIMIT 1;

theCharVar = 'Hello from P3347';
dsply theCharVar;
callp localProc();
P1224();
P1197();
P768();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3347 in the procedure';
end-proc;