**free

ctl-opt dftactgrp(*no);

dcl-pi P18;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4.rpgleinc'
/copy 'qrpgleref/P15.rpgleinc'
/copy 'qrpgleref/P13.rpgleinc'

dcl-ds theTable extname('T338') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T338 LIMIT 1;

theCharVar = 'Hello from P18';
dsply theCharVar;
callp localProc();
P4();
P15();
P13();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P18 in the procedure';
end-proc;