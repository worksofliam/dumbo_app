**free

ctl-opt dftactgrp(*no);

dcl-pi P4277;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1811.rpgleinc'
/copy 'qrpgleref/P2275.rpgleinc'
/copy 'qrpgleref/P1670.rpgleinc'

dcl-ds theTable extname('T1493') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1493 LIMIT 1;

theCharVar = 'Hello from P4277';
dsply theCharVar;
callp localProc();
P1811();
P2275();
P1670();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4277 in the procedure';
end-proc;