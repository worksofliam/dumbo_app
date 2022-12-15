**free

ctl-opt dftactgrp(*no);

dcl-pi P3520;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P16.rpgleinc'
/copy 'qrpgleref/P345.rpgleinc'
/copy 'qrpgleref/P3261.rpgleinc'

dcl-ds theTable extname('T23') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T23 LIMIT 1;

theCharVar = 'Hello from P3520';
dsply theCharVar;
callp localProc();
P16();
P345();
P3261();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3520 in the procedure';
end-proc;