**free

ctl-opt dftactgrp(*no);

dcl-pi P3539;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1797.rpgleinc'
/copy 'qrpgleref/P360.rpgleinc'
/copy 'qrpgleref/P595.rpgleinc'

dcl-ds theTable extname('T596') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T596 LIMIT 1;

theCharVar = 'Hello from P3539';
dsply theCharVar;
callp localProc();
P1797();
P360();
P595();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3539 in the procedure';
end-proc;