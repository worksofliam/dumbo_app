**free

ctl-opt dftactgrp(*no);

dcl-pi P22;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P12.rpgleinc'
/copy 'qrpgleref/P17.rpgleinc'
/copy 'qrpgleref/P18.rpgleinc'

dcl-ds theTable extname('T119') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T119 LIMIT 1;

theCharVar = 'Hello from P22';
dsply theCharVar;
callp localProc();
P12();
P17();
P18();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P22 in the procedure';
end-proc;