**free

ctl-opt dftactgrp(*no);

dcl-pi P4779;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4507.rpgleinc'
/copy 'qrpgleref/P1043.rpgleinc'
/copy 'qrpgleref/P2195.rpgleinc'

dcl-ds theTable extname('T293') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T293 LIMIT 1;

theCharVar = 'Hello from P4779';
dsply theCharVar;
callp localProc();
P4507();
P1043();
P2195();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4779 in the procedure';
end-proc;