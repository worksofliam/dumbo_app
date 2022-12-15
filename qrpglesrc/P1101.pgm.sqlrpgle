**free

ctl-opt dftactgrp(*no);

dcl-pi P1101;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P218.rpgleinc'
/copy 'qrpgleref/P614.rpgleinc'
/copy 'qrpgleref/P705.rpgleinc'

dcl-ds theTable extname('T1170') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1170 LIMIT 1;

theCharVar = 'Hello from P1101';
dsply theCharVar;
callp localProc();
P218();
P614();
P705();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1101 in the procedure';
end-proc;