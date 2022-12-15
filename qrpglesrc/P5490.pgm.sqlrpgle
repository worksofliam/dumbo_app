**free

ctl-opt dftactgrp(*no);

dcl-pi P5490;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4644.rpgleinc'
/copy 'qrpgleref/P1079.rpgleinc'
/copy 'qrpgleref/P1679.rpgleinc'

dcl-ds theTable extname('T876') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T876 LIMIT 1;

theCharVar = 'Hello from P5490';
dsply theCharVar;
callp localProc();
P4644();
P1079();
P1679();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5490 in the procedure';
end-proc;