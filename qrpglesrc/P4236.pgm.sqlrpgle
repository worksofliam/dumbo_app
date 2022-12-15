**free

ctl-opt dftactgrp(*no);

dcl-pi P4236;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3675.rpgleinc'
/copy 'qrpgleref/P3661.rpgleinc'
/copy 'qrpgleref/P345.rpgleinc'

dcl-ds theTable extname('T382') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T382 LIMIT 1;

theCharVar = 'Hello from P4236';
dsply theCharVar;
callp localProc();
P3675();
P3661();
P345();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4236 in the procedure';
end-proc;