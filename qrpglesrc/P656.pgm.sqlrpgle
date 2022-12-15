**free

ctl-opt dftactgrp(*no);

dcl-pi P656;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P79.rpgleinc'
/copy 'qrpgleref/P13.rpgleinc'
/copy 'qrpgleref/P16.rpgleinc'

dcl-ds theTable extname('T33') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T33 LIMIT 1;

theCharVar = 'Hello from P656';
dsply theCharVar;
callp localProc();
P79();
P13();
P16();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P656 in the procedure';
end-proc;