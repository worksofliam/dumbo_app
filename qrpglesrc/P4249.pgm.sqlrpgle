**free

ctl-opt dftactgrp(*no);

dcl-pi P4249;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3425.rpgleinc'
/copy 'qrpgleref/P3836.rpgleinc'
/copy 'qrpgleref/P63.rpgleinc'

dcl-ds theTable extname('T1321') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1321 LIMIT 1;

theCharVar = 'Hello from P4249';
dsply theCharVar;
callp localProc();
P3425();
P3836();
P63();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4249 in the procedure';
end-proc;