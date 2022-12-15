**free

ctl-opt dftactgrp(*no);

dcl-pi P35;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4.rpgleinc'
/copy 'qrpgleref/P26.rpgleinc'
/copy 'qrpgleref/P30.rpgleinc'

dcl-ds theTable extname('T191') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T191 LIMIT 1;

theCharVar = 'Hello from P35';
dsply theCharVar;
callp localProc();
P4();
P26();
P30();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P35 in the procedure';
end-proc;