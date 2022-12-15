**free

ctl-opt dftactgrp(*no);

dcl-pi P680;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P595.rpgleinc'
/copy 'qrpgleref/P396.rpgleinc'
/copy 'qrpgleref/P16.rpgleinc'

dcl-ds theTable extname('T141') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T141 LIMIT 1;

theCharVar = 'Hello from P680';
dsply theCharVar;
callp localProc();
P595();
P396();
P16();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P680 in the procedure';
end-proc;