**free

ctl-opt dftactgrp(*no);

dcl-pi P172;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P62.rpgleinc'
/copy 'qrpgleref/P18.rpgleinc'
/copy 'qrpgleref/P114.rpgleinc'

dcl-ds theTable extname('T326') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T326 LIMIT 1;

theCharVar = 'Hello from P172';
dsply theCharVar;
callp localProc();
P62();
P18();
P114();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P172 in the procedure';
end-proc;