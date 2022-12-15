**free

ctl-opt dftactgrp(*no);

dcl-pi P163;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P37.rpgleinc'
/copy 'qrpgleref/P139.rpgleinc'
/copy 'qrpgleref/P13.rpgleinc'

dcl-ds theTable extname('T240') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T240 LIMIT 1;

theCharVar = 'Hello from P163';
dsply theCharVar;
callp localProc();
P37();
P139();
P13();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P163 in the procedure';
end-proc;