**free

ctl-opt dftactgrp(*no);

dcl-pi P4176;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1721.rpgleinc'
/copy 'qrpgleref/P3679.rpgleinc'
/copy 'qrpgleref/P3862.rpgleinc'

dcl-ds theTable extname('T941') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T941 LIMIT 1;

theCharVar = 'Hello from P4176';
dsply theCharVar;
callp localProc();
P1721();
P3679();
P3862();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4176 in the procedure';
end-proc;