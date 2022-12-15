**free

ctl-opt dftactgrp(*no);

dcl-pi P82;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P18.rpgleinc'
/copy 'qrpgleref/P69.rpgleinc'
/copy 'qrpgleref/P25.rpgleinc'

dcl-ds theTable extname('T165') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T165 LIMIT 1;

theCharVar = 'Hello from P82';
dsply theCharVar;
callp localProc();
P18();
P69();
P25();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P82 in the procedure';
end-proc;