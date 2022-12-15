**free

ctl-opt dftactgrp(*no);

dcl-pi P5304;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P853.rpgleinc'
/copy 'qrpgleref/P3237.rpgleinc'
/copy 'qrpgleref/P3873.rpgleinc'

dcl-ds theTable extname('T1661') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1661 LIMIT 1;

theCharVar = 'Hello from P5304';
dsply theCharVar;
callp localProc();
P853();
P3237();
P3873();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5304 in the procedure';
end-proc;