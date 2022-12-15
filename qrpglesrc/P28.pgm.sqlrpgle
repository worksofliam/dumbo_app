**free

ctl-opt dftactgrp(*no);

dcl-pi P28;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P16.rpgleinc'
/copy 'qrpgleref/P6.rpgleinc'
/copy 'qrpgleref/P14.rpgleinc'

dcl-ds theTable extname('T645') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T645 LIMIT 1;

theCharVar = 'Hello from P28';
dsply theCharVar;
callp localProc();
P16();
P6();
P14();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P28 in the procedure';
end-proc;