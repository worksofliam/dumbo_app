**free

ctl-opt dftactgrp(*no);

dcl-pi P85;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4.rpgleinc'
/copy 'qrpgleref/P54.rpgleinc'
/copy 'qrpgleref/P61.rpgleinc'

dcl-ds theTable extname('T900') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T900 LIMIT 1;

theCharVar = 'Hello from P85';
dsply theCharVar;
callp localProc();
P4();
P54();
P61();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P85 in the procedure';
end-proc;