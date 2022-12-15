**free

ctl-opt dftactgrp(*no);

dcl-pi P3830;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1079.rpgleinc'
/copy 'qrpgleref/P1179.rpgleinc'
/copy 'qrpgleref/P480.rpgleinc'

dcl-ds theTable extname('T349') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T349 LIMIT 1;

theCharVar = 'Hello from P3830';
dsply theCharVar;
callp localProc();
P1079();
P1179();
P480();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3830 in the procedure';
end-proc;