**free

ctl-opt dftactgrp(*no);

dcl-pi P5071;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2013.rpgleinc'
/copy 'qrpgleref/P3350.rpgleinc'
/copy 'qrpgleref/P399.rpgleinc'

dcl-ds theTable extname('T1235') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1235 LIMIT 1;

theCharVar = 'Hello from P5071';
dsply theCharVar;
callp localProc();
P2013();
P3350();
P399();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5071 in the procedure';
end-proc;